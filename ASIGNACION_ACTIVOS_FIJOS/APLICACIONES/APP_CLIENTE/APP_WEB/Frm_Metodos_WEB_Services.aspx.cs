using System;
using System.Data;
using System.Threading;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.DirectoryServices;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Web.Script.Services;
using System.Web.Script.Serialization;
using System.Web.Security;
using System.Net;
using TSHAK.Components;
using Newtonsoft.Json;
using System.Text;
using System.IO;
using APP_CAPA_DATOS;
using APP_ENTIDADES;

public partial class Frm_Metodos_WEB_Services : System.Web.UI.Page
{
    // Variables Globales..
    private static string sMensaje_Error = string.Empty, xJSON = string.Empty, sRetorno = string.Empty;
    private static object xMi_Msg = null;

    // Variables de Acceso a Datos
    private static DataSet ds = new DataSet();
    private static APP_CAPA_DATOS.Acceso_Datos xMETODOS = new APP_CAPA_DATOS.Acceso_Datos();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    #region Guardar_Sesiones_Externas
        [WebMethod]
        public static string GetUserXmlInfo(string User, string Key)
        {
            System.Xml.XmlDocument oXml = new System.Xml.XmlDocument();
            System.Xml.XmlNode oRoot;
            System.Xml.XmlNode oSubNode;
            System.Xml.XmlNode oIDNode;
            string retMsg = string.Empty;

            try
            {
                oXml.Load(HttpContext.Current.Server.MapPath("Cache") + "\\" + User.ToString().Trim().ToLower() + ".xml");
                oRoot = oXml.DocumentElement;
                oIDNode = oRoot.SelectSingleNode("User[@ID='" + User.ToString().Trim().ToLower() + "']");
                if (oIDNode == null) { return "-100"; }
                oSubNode = oIDNode.SelectSingleNode(Key); 
                return oSubNode.InnerText;
            }
            catch (System.IO.FileNotFoundException ex) { retMsg = ex.Message; return "-100"; }
            catch (Exception e) { retMsg = e.Message; return "-100"; }
        }

        [WebMethod]
        public static string PutUserXmlInfo(string User, string Key, string Value)
        {
            System.Xml.XmlDocument oXml = new System.Xml.XmlDocument();
            System.Xml.XmlNode oRoot;
            System.Xml.XmlNode oUser;
            System.Xml.XmlNode oSubNode;
            System.Xml.XmlNode oIDNode;
            System.Xml.XmlElement oElem;
            string retMsg = string.Empty;

            string FileName = HttpContext.Current.Server.MapPath("Cache") + "\\" + User.ToString().Trim().ToLower() + ".xml";
            if (User.Length == 0) { return "-100"; }
            else
            {
                try { oXml.Load(FileName); }
                catch (System.IO.FileNotFoundException ex) { oXml.LoadXml("<?xml version=\"1.0\" encoding=\"utf-8\"?><SCP></SCP>"); retMsg = ex.Message; }
                catch (Exception e) { retMsg = e.Message; return "-100"; }
            }
            oRoot = oXml.DocumentElement;
            oIDNode = oRoot.SelectSingleNode("User[@ID='" + User.ToString().Trim().ToLower() + "']");
            if (oIDNode == null)
            {
                oElem = oXml.CreateElement("User");
                oElem.SetAttribute("ID", User.ToString().Trim().ToLower());
                oUser = oRoot.AppendChild(oElem);
                XML_PlaceElement(oUser, Key, Value);
            }
            else
            {
                oSubNode = oIDNode.SelectSingleNode(Key);
                if (oSubNode == null)
                { XML_PlaceElement(oIDNode, Key, Value); }
                else { XML_ReplaceElement(oSubNode, Value); }
            }
            try { oXml.Save(FileName); }
            catch (Exception e) { return e.Message; }
            return "100";
        }

        [WebMethod]
        public static string PutSessionValue(string Key, string Value)
        {
            HttpContext.Current.Session[Key] = Value;
            return "100";
        }

        [WebMethod]
        public static string GetSessionValue(string Key)
        {
            return HttpContext.Current.Session[Key].ToString();
        }

        private static string XML_PlaceElement(System.Xml.XmlNode DataNode, string DataElement, string DataValue)
        {
            System.Xml.XmlElement _Element;
            System.Xml.XmlText _Content;
            System.Xml.XmlDocument _Doc;
            System.Xml.XmlNode _NewNode;

            try
            {
                _Doc = DataNode.OwnerDocument;
                _Element = _Doc.CreateElement(DataElement);
                _Content = _Doc.CreateTextNode(DataValue);

                _NewNode = DataNode.AppendChild(_Element);
                _NewNode.AppendChild(_Content);
                return "1";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        private static string XML_ReplaceElement(System.Xml.XmlNode DataNode, string DataValue)
        {
            System.Xml.XmlText _Content;
            System.Xml.XmlDocument _Doc;

            try
            {
                _Doc = DataNode.OwnerDocument;
                _Content = _Doc.CreateTextNode(DataValue);
                DataNode.ReplaceChild(_Content, DataNode.FirstChild);
                return "1";
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

    #endregion

    #region Subir_Archivos

        [WebMethod]
        public static string Listar_Adjuntos(string xID, string xTIPO)
        { return Listar_Adjuntos_Json(xID, xTIPO); }

        internal static string Listar_Adjuntos_Json(string xID, string xTIPO)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            List<APP_ENTIDADES.TBL_DOCUMENTOS> JsonResult = xMETODOS.Listar_Adjuntos(out sMensaje_Error, xID, xTIPO);

            if (sMensaje_Error.Length > 0)
            {
                long number1 = 0;
                bool canConvert = long.TryParse(sMensaje_Error, out number1);
                if (canConvert == false)
                { sMensaje_Error = "0 - " + sMensaje_Error; }

                return sMensaje_Error;
            }

            return JsonConvert.SerializeObject(JsonResult);
        }

        [WebMethod]
        public static string Create_Files(List<APP_ENTIDADES.TBL_DOCUMENTOS> Mis_Docs, string xID, string xTIPO, string xUSER, string xSESION)
        { return Create_Files_Json(Mis_Docs, xID, xTIPO, xUSER, xSESION); }

        internal static string Create_Files_Json(List<APP_ENTIDADES.TBL_DOCUMENTOS> Mis_Docs, string xID, string xTIPO, string xUSER, string xSESION)
        {
            sMensaje_Error = string.Empty;
            try
            {
                //-CREANDO DEL DIRECTORIO O EL REPOSITORIO DE LOS ARCHIVOS
                string path = "/Adjuntos/";
                string serverPath = HttpContext.Current.Server.MapPath("~");
                string filePath = "";

                filePath = string.Concat(serverPath, "\\Adjuntos\\");

                if (!Directory.Exists(filePath))
                {
                    Directory.CreateDirectory(filePath);
                }

                // AGREGANDO LOS ARCHIVOS NUEVOS (SERVER = 0)
                List<APP_ENTIDADES.cREG_CARGA_ARCHIVOS> xDatos = new List<APP_ENTIDADES.cREG_CARGA_ARCHIVOS>();
                APP_ENTIDADES.cREG_CARGA_ARCHIVOS xREG = new APP_ENTIDADES.cREG_CARGA_ARCHIVOS();

                int xCantidad = 0;

                foreach (var item in Mis_Docs)
                {
                    string file = item.nbarchivo;
                    string[] xResp = item.urlarchivo.Split(',');

                    if (item.server == "0")
                    {
                        var bytes = new MemoryStream(Convert.FromBase64String(xResp[1]));

                        string FileNameFinal = Path.Combine(filePath, file + "." + item.ext);
                        
                        if (!File.Exists(FileNameFinal))
                        {
                            FileStream stream = new FileStream(FileNameFinal, FileMode.CreateNew);
                            BinaryWriter writer = new BinaryWriter(stream);

                            writer.Write(bytes.ToArray(), 0, bytes.ToArray().Length);
                            writer.Close();

                            writer.Dispose();
                            stream.Dispose();
                            bytes.Dispose();

                            xREG = new APP_ENTIDADES.cREG_CARGA_ARCHIVOS();

                            xREG.ID = "0";
                            xREG.ARCHIVO = item.nbarchivo; xREG.EXTENSION = item.ext; xREG.URL = string.Concat(path, file);
                            xREG.ID_TIPO = xID; xREG.TIPO = xTIPO;
                            
                            xDatos.Add(xREG); xCantidad = (xCantidad + 1);
                        }
                    }
                }

                // AGREGANDO A LA BITACORA
                if (xCantidad > 0)
                {
                    DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                    string result;
                    using (StringWriter sw = new StringWriter())
                    {
                        yDatos.WriteXml(sw);
                        result = sw.ToString();
                    }

                    xMETODOS.INS_CARGA_ARCHIVOS(out sMensaje_Error, result, xUSER, xSESION);
                    if (sMensaje_Error.Length > 0)
                    {
                        long number1 = 0;
                        bool canConvert = long.TryParse(sMensaje_Error, out number1);
                        if (canConvert == false)
                        { sMensaje_Error = "0 - " + sMensaje_Error; }
                        else { sMensaje_Error = "P - " + sMensaje_Error; }

                    }
                }

            }
            catch (Exception ex)
            {
                sMensaje_Error = "0 - " + ex.Message;
            }

            return sMensaje_Error;
        }


        internal static void Borrando_Archivos_y_Carpetas(string target_dir)
        {
            foreach (string file in Directory.GetFiles(target_dir))
            {
                File.Delete(file);
            }

            foreach (string subDir in Directory.GetDirectories(target_dir))
            {
                Borrando_Archivos_y_Carpetas(subDir);
            }

            Thread.Sleep(2); // This makes the difference between whether it works or not. Sleep(0) is not enough. 
            Directory.Delete(target_dir);
        }

        [WebMethod]
        public static string Delete_Files(string xID, string xUSER, string xSESION)
        { return Delete_Files_Json(xID, xUSER, xSESION); }

        internal static string Delete_Files_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Recuperando la URL a Eliminar
                List<APP_ENTIDADES.TBL_VARIABLES> xURL = xMETODOS.URL_ARCHIVO(out sMensaje_Error, xID);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { sMensaje_Error = "0 - " + sMensaje_Error; }
                    else { sMensaje_Error = "P - " + sMensaje_Error; }

                    return sMensaje_Error;
                }
                                
                // Eliminando Fisicamente el Archivo
                string serverPath = HttpContext.Current.Server.MapPath("~");
                string filePath = "";

                string xVAL_URL = xURL[0].DESCRIPCION.Replace('/', '\\');

                filePath = string.Concat(serverPath, xVAL_URL);

                if (File.Exists(filePath) == true)
                {
                    File.Delete(filePath);
                }


                // Llamada al Metodo de datos
                xMETODOS.DEL_CARGA_ARCHIVOS(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { sMensaje_Error = "0 - " + sMensaje_Error; }
                    else { sMensaje_Error = "P - " + sMensaje_Error; }

                }
            }
            catch (Exception ex)
            {
                sMensaje_Error = "0 - " + ex.Message;
            }
            return sMensaje_Error;
        }


    #endregion
    
    #region Mis_Funciones_Generales
        // Funciones de Sesiones 
        [WebMethod]
        public static object Cerrar_Sesion(string xSesion)
        { return Cerrar_Sesion_Json(xSesion); }

        internal static object Cerrar_Sesion_Json(string xSesion)
        {            
            try
            {
                // Llamada al Metodo de datos
                xMETODOS.CERRAR_SESION(out sRetorno, xSesion);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }

                }

                return new { exito = true, Mensaje = "Transacción Realizado con Exito..." };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }


        // Listado de Permisos
        [WebMethod]
        public static object Acceso_Opciones(string xUser, string xRol, string xOpcion)
        { return Acceso_Opciones_Json(xUser, xRol, xOpcion); }

        internal static object Acceso_Opciones_Json(string xUser, string xRol, string xOpcion)
        {            
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_ACCESOS_01> JsonResult = xMETODOS.Accesos_Opciones(out sMensaje_Error, xUser, xRol, xOpcion);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listado_Acceso_Opciones(string xUser, string xRol)
        { return Listado_Acceso_Opciones_Json(xUser, xRol); }

        internal static object Listado_Acceso_Opciones_Json(string xUser, string xRol)
        {            
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES> JsonResult = xMETODOS.Listado_Acceso_Opciones(out sMensaje_Error, xUser, xRol);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }
    

        // Actualizar Clave
        [WebMethod]
        public static object Actualizar_PASSWORD_USER(List<TBL_VARIABLES> xDatos, string xSESION)
        { return Actualizar_Password_User_Json(xDatos, xSESION); }

        internal static object Actualizar_Password_User_Json(List<TBL_VARIABLES> xDatos, string xSESION)
        {   
            // Se recuperan los Datos
            try
            {
                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Actualizar_PASSWORD_USER(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }

                }

                return new { exito = true, Mensaje = "Transacción Realizado con Exito..." };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        // Funciones de Reportes
        [WebMethod]
        public static object Listar_Reportes_01(string xID)
        { return Listar_Reportes_01_Json(xID); }

        internal static object Listar_Reportes_01_Json(string xID)
        {
            // Llamada al Metodo de datos
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES> JsonResult = xMETODOS.Lista_Reportes_01(out sMensaje_Error, xID);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Lista_Reportes_02()
        { return Lista_Reportes_02_Json(); }

        internal static object Lista_Reportes_02_Json()
        {
            // Llamada al Metodo de datos
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES> JsonResult = xMETODOS.Lista_Reportes_02(out sMensaje_Error);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Lista_Reportes_03()
        { return Lista_Reportes_03_Json(); }

        internal static object Lista_Reportes_03_Json()
        {
            // Llamada al Metodo de datos
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES> JsonResult = xMETODOS.Lista_Reportes_03(out sMensaje_Error);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }


        // Otras Funciones
        [WebMethod]
        public static object Echo(DateTime tiempo)
        { return EchoStr(tiempo); }

        internal static object EchoStr(DateTime tiempo)
        {
            // Se recuperan los Datos
            try
            {
                return new { exito = true, Mensaje = tiempo.Ticks.ToString() };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }
            
        [WebMethod]
        public static object Cadena_Encryptar(List<APP_ENTIDADES.TBL_VARIABLES> Parametros)
        { return Cadena_Encryptar_Json(Parametros); }

        internal static object Cadena_Encryptar_Json(List<APP_ENTIDADES.TBL_VARIABLES> Parametros)
        {
            // Se recuperan los Datos
            try
            {
                // Llamada al Metodo de datos
                SecureQueryString yCadena = new SecureQueryString(new byte[] { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 2, 3, 4, 5, 8 });

                foreach (TBL_VARIABLES param in Parametros)
                {
                    yCadena[param.ID] = param.DESCRIPCION;
                }

                return new { exito = true, Mensaje = HttpUtility.UrlEncode(yCadena.ToString()) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

    #endregion

    #region Seguridad

        // Ventana: Roles
        [WebMethod]
        public static object Listar_SYS_ROLES(string xId_Estado)
        { return Listar_SYS_ROLES_Json(xId_Estado); }

        internal static object Listar_SYS_ROLES_Json(string xId_Estado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_ROL> JsonResult = xMETODOS.Listar_SYS_ROLES(out sMensaje_Error, xId_Estado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_SYS_ROLES_AFECTABLE()
        { return Listar_SYS_ROLES_AFECTABLE_Json(); }

        internal static object Listar_SYS_ROLES_AFECTABLE_Json()
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES> JsonResult = xMETODOS.Listar_SYS_ROLES_AFECTABLE(out sMensaje_Error);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }
                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_SYS_ROLES(List<APP_ENTIDADES.cROL> xDatos, string xSESION)
        { return Insertar_Actualizar_SYS_ROLES_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_SYS_ROLES_Json(List<APP_ENTIDADES.cROL> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_SYS_ROLES(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_SYS_ROLES(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_SYS_ROLES_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_SYS_ROLES_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_SYS_ROLES(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_SYS_ROLES(string xID, string xUSER, string xSESION)
        { return Reactivar_SYS_ROLES_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_SYS_ROLES_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_SYS_ROLES(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }



        // Ventana: Usuarios
        [WebMethod]
        public static object Listar_SYS_USUARIOS(string xId_Estado)
        { return Listar_SYS_USUARIOS_Json(xId_Estado); }

        internal static object Listar_SYS_USUARIOS_Json(string xId_Estado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_USUARIOS> JsonResult = xMETODOS.Listar_SYS_USUARIOS(out sMensaje_Error, xId_Estado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_SYS_USUARIOS_AFECTABLE()
        { return Listar_SYS_USUARIOS_AFECTABLE_Json(); }

        internal static object Listar_SYS_USUARIOS_AFECTABLE_Json()
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES> JsonResult = xMETODOS.Listar_SYS_USUARIOS_AFECTABLE(out sMensaje_Error);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }
                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_SYS_USUARIOS(List<APP_ENTIDADES.cUSUARIOS> xDatos, string xSESION)
        { return Insertar_Actualizar_SYS_USUARIOS_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_SYS_USUARIOS_Json(List<APP_ENTIDADES.cUSUARIOS> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_SYS_USUARIOS(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_SYS_USUARIOS(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_SYS_USUARIOS_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_SYS_USUARIOS_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_SYS_USUARIOS(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_SYS_USUARIOS(string xID, string xUSER, string xSESION)
        { return Reactivar_SYS_USUARIOS_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_SYS_USUARIOS_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_SYS_USUARIOS(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }


        // Ventana: Opciones
        [WebMethod]
        public static object Listar_SYS_OPCIONES(string xId_Estado)
        { return Listar_SYS_OPCIONES_Json(xId_Estado); }

        internal static object Listar_SYS_OPCIONES_Json(string xId_Estado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_OPCIONES> JsonResult = xMETODOS.Listar_SYS_OPCIONES(out sMensaje_Error, xId_Estado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_SYS_NIVELES()
        { return Listar_SYS_NIVELES_Json(); }

        internal static object Listar_SYS_NIVELES_Json()
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES> JsonResult = xMETODOS.Listar_SYS_NIVELES(out sMensaje_Error);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }
                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_SYS_OPCIONES(List<APP_ENTIDADES.cOPCIONES> xDatos, string xSESION)
        { return Insertar_Actualizar_SYS_OPCIONES_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_SYS_OPCIONES_Json(List<APP_ENTIDADES.cOPCIONES> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.INS_ACT_SYS_OPCIONES(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_SYS_OPCIONES(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_SYS_OPCIONES_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_SYS_OPCIONES_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_SYS_OPCIONES(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_SYS_OPCIONES(string xID, string xUSER, string xSESION)
        { return Reactivar_SYS_OPCIONES_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_SYS_OPCIONES_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_SYS_OPCIONES(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }


        // Ventana: ACCESOS...

        [WebMethod]
        public static object Listar_Accesos(string xId_Estado, string xUser, string xRol)
        { return Listar_Accesos_Json(xId_Estado, xUser, xRol); }

        internal static object Listar_Accesos_Json(string xId_Estado, string xUser, string xRol)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_ACCESOS> JsonResult = xMETODOS.Listar_Accesos(out sMensaje_Error, xId_Estado, xUser, xRol);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object ASIGNAR_SYS_ACCESOS(string xUSER, string xROL, string xSESION)
        { return ASIGNAR_SYS_ACCESOS_Json(xUSER, xROL, xSESION); }

        internal static object ASIGNAR_SYS_ACCESOS_Json(string xUSER, string xROL, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.ASIGNAR_SYS_ACCESOS(out sMensaje_Error, xUSER, xROL, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object ACTUALIZAR_ACCESOS(List<APP_ENTIDADES.cACCESOS> xDatos, string xSESION)
        { return ACTUALIZAR_ACCESOS_Json(xDatos, xSESION); }

        internal static object ACTUALIZAR_ACCESOS_Json(List<APP_ENTIDADES.cACCESOS> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.ACTUALIZAR_ACCESOS(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_SYS_ACCESOS(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_SYS_ACCESOS_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_SYS_ACCESOS_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_SYS_ACCESOS(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_SYS_ACCESOS(string xID, string xUSER, string xSESION)
        { return Reactivar_SYS_ACCESOS_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_SYS_ACCESOS_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_SYS_ACCESOS(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }


        // Ventana de Bitacoras y Sesiones
        [WebMethod]
        public static object Listar_Sesiones(string xUser)
        { return Listar_Sesiones_Json(xUser); }

        internal static object Listar_Sesiones_Json(string xUser)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_SESIONES> JsonResult = xMETODOS.Listar_Sesiones(out sMensaje_Error, xUser);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_Bitacoras(string xSesion)
        { return Listar_Bitacoras_Json(xSesion); }

        internal static object Listar_Bitacoras_Json(string xSesion)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_BITACORAS> JsonResult = xMETODOS.Listar_Bitacoras(out sMensaje_Error, xSesion);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }


    #endregion

    #region Mis_Funciones_Internas

        // Ventana: Tipos de Colores
        [WebMethod]
        public static object Listar_CAT_TIPO_COLORES(string xId_Estado)
        { return Listar_CAT_TIPO_COLORES_Json(xId_Estado); }

        internal static object Listar_CAT_TIPO_COLORES_Json(string xId_Estado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_TIPO_COLORES> JsonResult = xMETODOS.Listar_CAT_TIPO_COLORES(out sMensaje_Error, xId_Estado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_CAT_TIPO_COLORES_AFECTABLE()
        { return Listar_CAT_TIPO_COLORES_AFECTABLE_Json(); }

        internal static object Listar_CAT_TIPO_COLORES_AFECTABLE_Json()
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES> JsonResult = xMETODOS.Listar_CAT_TIPO_COLORES_AFECTABLE(out sMensaje_Error);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }
                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_CAT_TIPO_COLORES(List<APP_ENTIDADES.cTIPO_COLORES> xDatos, string xSESION)
        { return Insertar_Actualizar_CAT_TIPO_COLORES_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_CAT_TIPO_COLORES_Json(List<APP_ENTIDADES.cTIPO_COLORES> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_CAT_TIPO_COLORES(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_CAT_TIPO_COLORES(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_CAT_TIPO_COLORES_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_CAT_TIPO_COLORES_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_CAT_TIPO_COLORES(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_CAT_TIPO_COLORES(string xID, string xUSER, string xSESION)
        { return Reactivar_CAT_TIPO_COLORES_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_CAT_TIPO_COLORES_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_CAT_TIPO_COLORES(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }


        // Ventana: Tipos de Clase
        [WebMethod]
        public static object Listar_CAT_TIPO_CLASES(string xId_Estado)
        { return Listar_CAT_TIPO_CLASES_Json(xId_Estado); }

        internal static object Listar_CAT_TIPO_CLASES_Json(string xId_Estado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_TIPO_CLASES> JsonResult = xMETODOS.Listar_CAT_TIPO_CLASES(out sMensaje_Error, xId_Estado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_CAT_TIPO_CLASES_AFECTABLE()
        { return Listar_CAT_TIPO_CLASES_AFECTABLE_Json(); }

        internal static object Listar_CAT_TIPO_CLASES_AFECTABLE_Json()
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES> JsonResult = xMETODOS.Listar_CAT_TIPO_CLASES_AFECTABLE(out sMensaje_Error);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }
                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_CAT_TIPO_CLASES(List<APP_ENTIDADES.cTIPO_CLASES> xDatos, string xSESION)
        { return Insertar_Actualizar_CAT_TIPO_CLASES_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_CAT_TIPO_CLASES_Json(List<APP_ENTIDADES.cTIPO_CLASES> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_CAT_TIPO_CLASES(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_CAT_TIPO_CLASES(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_CAT_TIPO_CLASES_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_CAT_TIPO_CLASES_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_CAT_TIPO_CLASES(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_CAT_TIPO_CLASES(string xID, string xUSER, string xSESION)
        { return Reactivar_CAT_TIPO_CLASES_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_CAT_TIPO_CLASES_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_CAT_TIPO_CLASES(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

    
        // Ventana: Tipos de Modelos
        [WebMethod]
        public static object Listar_CAT_TIPO_MODELOS(string xId_Estado)
        { return Listar_CAT_TIPO_MODELOS_Json(xId_Estado); }

        internal static object Listar_CAT_TIPO_MODELOS_Json(string xId_Estado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_TIPO_MODELOS> JsonResult = xMETODOS.Listar_CAT_TIPO_MODELOS(out sMensaje_Error, xId_Estado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_CAT_TIPO_MODELOS_AFECTABLE()
        { return Listar_CAT_TIPO_MODELOS_AFECTABLE_Json(); }

        internal static object Listar_CAT_TIPO_MODELOS_AFECTABLE_Json()
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES> JsonResult = xMETODOS.Listar_CAT_TIPO_MODELOS_AFECTABLE(out sMensaje_Error);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }
                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_CAT_TIPO_MODELOS(List<APP_ENTIDADES.cTIPO_MODELOS> xDatos, string xSESION)
        { return Insertar_Actualizar_CAT_TIPO_MODELOS_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_CAT_TIPO_MODELOS_Json(List<APP_ENTIDADES.cTIPO_MODELOS> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_CAT_TIPO_MODELOS(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_CAT_TIPO_MODELOS(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_CAT_TIPO_MODELOS_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_CAT_TIPO_MODELOS_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_CAT_TIPO_MODELOS(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_CAT_TIPO_MODELOS(string xID, string xUSER, string xSESION)
        { return Reactivar_CAT_TIPO_MODELOS_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_CAT_TIPO_MODELOS_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_CAT_TIPO_MODELOS(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }
    

        // Ventana: Tipos de Marcas
        [WebMethod]
        public static object Listar_CAT_TIPO_MARCAS(string xId_Estado)
        { return Listar_CAT_TIPO_MARCAS_Json(xId_Estado); }

        internal static object Listar_CAT_TIPO_MARCAS_Json(string xId_Estado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_TIPO_MARCAS> JsonResult = xMETODOS.Listar_CAT_TIPO_MARCAS(out sMensaje_Error, xId_Estado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_CAT_TIPO_MARCAS_AFECTABLE()
        { return Listar_CAT_TIPO_MARCAS_AFECTABLE_Json(); }

        internal static object Listar_CAT_TIPO_MARCAS_AFECTABLE_Json()
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES> JsonResult = xMETODOS.Listar_CAT_TIPO_MARCAS_AFECTABLE(out sMensaje_Error);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }
                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_CAT_TIPO_MARCAS(List<APP_ENTIDADES.cTIPO_MARCAS> xDatos, string xSESION)
        { return Insertar_Actualizar_CAT_TIPO_MARCAS_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_CAT_TIPO_MARCAS_Json(List<APP_ENTIDADES.cTIPO_MARCAS> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_CAT_TIPO_MARCAS(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_CAT_TIPO_MARCAS(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_CAT_TIPO_MARCAS_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_CAT_TIPO_MARCAS_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_CAT_TIPO_MARCAS(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_CAT_TIPO_MARCAS(string xID, string xUSER, string xSESION)
        { return Reactivar_CAT_TIPO_MARCAS_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_CAT_TIPO_MARCAS_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_CAT_TIPO_MARCAS(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

    
        // Ventana: Tipos de Procedencias
        [WebMethod]
        public static object Listar_CAT_TIPO_PROCEDENCIAS(string xId_Estado)
        { return Listar_CAT_TIPO_PROCEDENCIAS_Json(xId_Estado); }

        internal static object Listar_CAT_TIPO_PROCEDENCIAS_Json(string xId_Estado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_TIPO_PROCEDENCIAS> JsonResult = xMETODOS.Listar_CAT_TIPO_PROCEDENCIAS(out sMensaje_Error, xId_Estado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_CAT_TIPO_PROCEDENCIAS_AFECTABLE()
        { return Listar_CAT_TIPO_PROCEDENCIAS_AFECTABLE_Json(); }

        internal static object Listar_CAT_TIPO_PROCEDENCIAS_AFECTABLE_Json()
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES> JsonResult = xMETODOS.Listar_CAT_TIPO_PROCEDENCIAS_AFECTABLE(out sMensaje_Error);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }
                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_CAT_TIPO_PROCEDENCIAS(List<APP_ENTIDADES.cTIPO_PROCEDENCIAS> xDatos, string xSESION)
        { return Insertar_Actualizar_CAT_TIPO_PROCEDENCIAS_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_CAT_TIPO_PROCEDENCIAS_Json(List<APP_ENTIDADES.cTIPO_PROCEDENCIAS> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_CAT_TIPO_PROCEDENCIAS(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_CAT_TIPO_PROCEDENCIAS(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_CAT_TIPO_PROCEDENCIAS_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_CAT_TIPO_PROCEDENCIAS_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_CAT_TIPO_PROCEDENCIAS(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_CAT_TIPO_PROCEDENCIAS(string xID, string xUSER, string xSESION)
        { return Reactivar_CAT_TIPO_PROCEDENCIAS_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_CAT_TIPO_PROCEDENCIAS_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_CAT_TIPO_PROCEDENCIAS(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }



        // Ventana: Tipos de Sexos
        [WebMethod]
        public static object Listar_CAT_TIPO_SEXOS(string xId_Estado)
        { return Listar_CAT_TIPO_SEXOS_Json(xId_Estado); }

        internal static object Listar_CAT_TIPO_SEXOS_Json(string xId_Estado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_TIPO_SEXOS> JsonResult = xMETODOS.Listar_CAT_TIPO_SEXOS(out sMensaje_Error, xId_Estado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_CAT_TIPO_SEXOS_AFECTABLE()
        { return Listar_CAT_TIPO_SEXOS_AFECTABLE_Json(); }

        internal static object Listar_CAT_TIPO_SEXOS_AFECTABLE_Json()
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES> JsonResult = xMETODOS.Listar_CAT_TIPO_SEXOS_AFECTABLE(out sMensaje_Error);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }
                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_CAT_TIPO_SEXOS(List<APP_ENTIDADES.cTIPO_SEXOS> xDatos, string xSESION)
        { return Insertar_Actualizar_CAT_TIPO_SEXOS_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_CAT_TIPO_SEXOS_Json(List<APP_ENTIDADES.cTIPO_SEXOS> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_CAT_TIPO_SEXOS(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_CAT_TIPO_SEXOS(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_CAT_TIPO_SEXOS_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_CAT_TIPO_SEXOS_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_CAT_TIPO_SEXOS(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_CAT_TIPO_SEXOS(string xID, string xUSER, string xSESION)
        { return Reactivar_CAT_TIPO_SEXOS_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_CAT_TIPO_SEXOS_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_CAT_TIPO_SEXOS(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }



        // Ventana: Tipos de Movimientos
        [WebMethod]
        public static object Listar_CAT_TIPO_MOVIMIENTOS(string xId_Estado)
        { return Listar_CAT_TIPO_MOVIMIENTOS_Json(xId_Estado); }

        internal static object Listar_CAT_TIPO_MOVIMIENTOS_Json(string xId_Estado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_TIPO_MOVIMIENTOS> JsonResult = xMETODOS.Listar_CAT_TIPO_MOVIMIENTOS(out sMensaje_Error, xId_Estado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_CAT_TIPO_MOVIMIENTOS_AFECTABLE()
        { return Listar_CAT_TIPO_MOVIMIENTOS_AFECTABLE_Json(); }

        internal static object Listar_CAT_TIPO_MOVIMIENTOS_AFECTABLE_Json()
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES> JsonResult = xMETODOS.Listar_CAT_TIPO_MOVIMIENTOS_AFECTABLE(out sMensaje_Error);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }
                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_CAT_TIPO_MOVIMIENTOS(List<APP_ENTIDADES.cTIPO_MOVIMIENTOS> xDatos, string xSESION)
        { return Insertar_Actualizar_CAT_TIPO_MOVIMIENTOS_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_CAT_TIPO_MOVIMIENTOS_Json(List<APP_ENTIDADES.cTIPO_MOVIMIENTOS> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_CAT_TIPO_MOVIMIENTOS(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_CAT_TIPO_MOVIMIENTOS(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_CAT_TIPO_MOVIMIENTOS_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_CAT_TIPO_MOVIMIENTOS_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_CAT_TIPO_MOVIMIENTOS(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_CAT_TIPO_MOVIMIENTOS(string xID, string xUSER, string xSESION)
        { return Reactivar_CAT_TIPO_MOVIMIENTOS_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_CAT_TIPO_MOVIMIENTOS_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_CAT_TIPO_MOVIMIENTOS(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }



        // Ventana: Tipos de Proveedores
        [WebMethod]
        public static object Listar_CAT_TIPO_PROVEEDOR(string xId_Estado)
        { return Listar_CAT_TIPO_PROVEEDOR_Json(xId_Estado); }

        internal static object Listar_CAT_TIPO_PROVEEDOR_Json(string xId_Estado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_TIPO_PROVEEDOR> JsonResult = xMETODOS.Listar_CAT_TIPO_PROVEEDOR(out sMensaje_Error, xId_Estado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_CAT_TIPO_PROVEEDOR_AFECTABLE()
        { return Listar_CAT_TIPO_PROVEEDOR_AFECTABLE_Json(); }

        internal static object Listar_CAT_TIPO_PROVEEDOR_AFECTABLE_Json()
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES> JsonResult = xMETODOS.Listar_CAT_TIPO_PROVEEDOR_AFECTABLE(out sMensaje_Error);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }
                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_CAT_TIPO_PROVEEDOR(List<APP_ENTIDADES.cTIPO_PROVEEDOR> xDatos, string xSESION)
        { return Insertar_Actualizar_CAT_TIPO_PROVEEDOR_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_CAT_TIPO_PROVEEDOR_Json(List<APP_ENTIDADES.cTIPO_PROVEEDOR> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_CAT_TIPO_PROVEEDOR(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_CAT_TIPO_PROVEEDOR(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_CAT_TIPO_PROVEEDOR_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_CAT_TIPO_PROVEEDOR_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_CAT_TIPO_PROVEEDOR(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_CAT_TIPO_PROVEEDOR(string xID, string xUSER, string xSESION)
        { return Reactivar_CAT_TIPO_PROVEEDOR_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_CAT_TIPO_PROVEEDOR_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_CAT_TIPO_PROVEEDOR(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }



        // Ventana: Tipos de Contacto Proveedores
        [WebMethod]
        public static object Listar_CAT_TIPO_CONTACTO_PROVEEDOR(string xId_Estado)
        { return Listar_CAT_TIPO_CONTACTO_PROVEEDOR_Json(xId_Estado); }

        internal static object Listar_CAT_TIPO_CONTACTO_PROVEEDOR_Json(string xId_Estado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_TIPO_CONTACTO_PROVEEDOR> JsonResult = xMETODOS.Listar_CAT_TIPO_CONTACTO_PROVEEDOR(out sMensaje_Error, xId_Estado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_CAT_TIPO_CONTACTO_PROVEEDOR_AFECTABLE()
        { return Listar_CAT_TIPO_CONTACTO_PROVEEDOR_AFECTABLE_Json(); }

        internal static object Listar_CAT_TIPO_CONTACTO_PROVEEDOR_AFECTABLE_Json()
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES> JsonResult = xMETODOS.Listar_CAT_TIPO_CONTACTO_PROVEEDOR_AFECTABLE(out sMensaje_Error);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }
                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_CAT_TIPO_CONTACTO_PROVEEDOR(List<APP_ENTIDADES.cTIPO_CONTACTO_PROVEEDOR> xDatos, string xSESION)
        { return Insertar_Actualizar_CAT_TIPO_CONTACTO_PROVEEDOR_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_CAT_TIPO_CONTACTO_PROVEEDOR_Json(List<APP_ENTIDADES.cTIPO_CONTACTO_PROVEEDOR> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_CAT_TIPO_CONTACTO_PROVEEDOR(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_CAT_TIPO_CONTACTO_PROVEEDOR(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_CAT_TIPO_CONTACTO_PROVEEDOR_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_CAT_TIPO_CONTACTO_PROVEEDOR_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_CAT_TIPO_CONTACTO_PROVEEDOR(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_CAT_TIPO_CONTACTO_PROVEEDOR(string xID, string xUSER, string xSESION)
        { return Reactivar_CAT_TIPO_CONTACTO_PROVEEDOR_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_CAT_TIPO_CONTACTO_PROVEEDOR_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_CAT_TIPO_CONTACTO_PROVEEDOR(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }



        // Ventana: Tipos de Altas
        [WebMethod]
        public static object Listar_CAT_TIPO_ALTAS(string xId_Estado)
        { return Listar_CAT_TIPO_ALTAS_Json(xId_Estado); }

        internal static object Listar_CAT_TIPO_ALTAS_Json(string xId_Estado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_TIPO_ALTAS> JsonResult = xMETODOS.Listar_CAT_TIPO_ALTAS(out sMensaje_Error, xId_Estado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_CAT_TIPO_ALTAS_AFECTABLE()
        { return Listar_CAT_TIPO_ALTAS_AFECTABLE_Json(); }

        internal static object Listar_CAT_TIPO_ALTAS_AFECTABLE_Json()
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES> JsonResult = xMETODOS.Listar_CAT_TIPO_ALTAS_AFECTABLE(out sMensaje_Error);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }
                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_CAT_TIPO_ALTAS(List<APP_ENTIDADES.cTIPO_ALTAS> xDatos, string xSESION)
        { return Insertar_Actualizar_CAT_TIPO_ALTAS_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_CAT_TIPO_ALTAS_Json(List<APP_ENTIDADES.cTIPO_ALTAS> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_CAT_TIPO_ALTAS(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_CAT_TIPO_ALTAS(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_CAT_TIPO_ALTAS_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_CAT_TIPO_ALTAS_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_CAT_TIPO_ALTAS(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_CAT_TIPO_ALTAS(string xID, string xUSER, string xSESION)
        { return Reactivar_CAT_TIPO_ALTAS_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_CAT_TIPO_ALTAS_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_CAT_TIPO_ALTAS(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }



        // Ventana: Centros de Costos
        [WebMethod]
        public static object Listar_CAT_CENTROS_COSTOS(string xId_Estado)
        { return Listar_CAT_CENTROS_COSTOS_Json(xId_Estado); }

        internal static object Listar_CAT_CENTROS_COSTOS_Json(string xId_Estado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_OFICINAS> JsonResult = xMETODOS.Listar_CAT_CENTROS_COSTOS(out sMensaje_Error, xId_Estado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_CAT_CENTRO_COSTOS_BUSQ(string xFiltro)
        { return Listar_CAT_CENTRO_COSTOS_BUSQ_Json(xFiltro); }

        internal static object Listar_CAT_CENTRO_COSTOS_BUSQ_Json(string xFiltro)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES_BUSQ> JsonResult = xMETODOS.Listar_CAT_CENTRO_COSTOS_BUSQ(out sMensaje_Error, xFiltro);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }
                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_CAT_CENTROS_COSTOS(List<APP_ENTIDADES.cOFICINAS> xDatos, string xSESION)
        { return Insertar_Actualizar_CAT_CENTROS_COSTOS_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_CAT_CENTROS_COSTOS_Json(List<APP_ENTIDADES.cOFICINAS> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_CAT_CENTROS_COSTOS(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_CAT_CENTROS_COSTOS(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_CAT_CENTROS_COSTOS_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_CAT_CENTROS_COSTOS_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_CAT_CENTRO_COSTOS(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_CAT_CENTRO_COSTOS(string xID, string xUSER, string xSESION)
        { return Reactivar_CAT_CENTRO_COSTOS_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_CAT_CENTRO_COSTOS_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_CAT_CENTRO_COSTOS(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }



        // Ventana: Cargos Ocupacionales
        [WebMethod]
        public static object Listar_CAT_CARGOS_OCUPACIONAL(string xId_Estado)
        { return Listar_CAT_CARGOS_OCUPACIONAL_Json(xId_Estado); }

        internal static object Listar_CAT_CARGOS_OCUPACIONAL_Json(string xId_Estado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_CARGOS> JsonResult = xMETODOS.Listar_CAT_CARGOS_OCUPACIONAL(out sMensaje_Error, xId_Estado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_CAT_CARGOS_OCUPACIONAL_BUSQ(string xFiltro)
        { return Listar_CAT_CARGOS_OCUPACIONAL_BUSQ_Json(xFiltro); }

        internal static object Listar_CAT_CARGOS_OCUPACIONAL_BUSQ_Json(string xFiltro)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES_BUSQ> JsonResult = xMETODOS.Listar_CAT_CARGOS_OCUPACIONAL_BUSQ(out sMensaje_Error, xFiltro);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }
                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_CAT_CARGOS_OCUPACIONAL(List<APP_ENTIDADES.cCARGOS> xDatos, string xSESION)
        { return Insertar_Actualizar_CAT_CARGOS_OCUPACIONAL_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_CAT_CARGOS_OCUPACIONAL_Json(List<APP_ENTIDADES.cCARGOS> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_CAT_CARGOS_OCUPACIONAL(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_CAT_CARGOS_OCUPACIONAL(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_CAT_CARGOS_OCUPACIONAL_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_CAT_CARGOS_OCUPACIONAL_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_CAT_CARGOS_OCUPACIONAL(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_CAT_CARGOS_OCUPACIONAL(string xID, string xUSER, string xSESION)
        { return Reactivar_CAT_CARGOS_OCUPACIONAL_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_CAT_CARGOS_OCUPACIONAL_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_CAT_CARGOS_OCUPACIONAL(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }


    #endregion

    #region Principal

        // Ventana: Proveedores
        [WebMethod]
        public static object Listar_REG_PROVEEDORES(string xId_Estado)
        { return Listar_REG_PROVEEDORES_Json(xId_Estado); }

        internal static object Listar_REG_PROVEEDORES_Json(string xId_Estado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_PROVEEDORES> JsonResult = xMETODOS.Listar_REG_PROVEEDORES(out sMensaje_Error, xId_Estado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_REG_PROVEEDORES_BUSQ(string xFiltro)
        { return Listar_REG_PROVEEDORES_BUSQ_Json(xFiltro); }

        internal static object Listar_REG_PROVEEDORES_BUSQ_Json(string xFiltro)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_VARIABLES_BUSQ> JsonResult = xMETODOS.Listar_REG_PROVEEDORES_BUSQ(out sMensaje_Error, xFiltro);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }
                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_REG_PROVEEDORES(List<APP_ENTIDADES.cPROVEEDORES> xDatos, string xSESION)
        { return Insertar_Actualizar_REG_PROVEEDORES_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_REG_PROVEEDORES_Json(List<APP_ENTIDADES.cPROVEEDORES> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_REG_PROVEEDORES(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_REG_PROVEEDORES(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_REG_PROVEEDORES_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_REG_PROVEEDORES_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_REG_PROVEEDORES(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_REG_PROVEEDORES(string xID, string xUSER, string xSESION)
        { return Reactivar_REG_PROVEEDORES_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_REG_PROVEEDORES_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_REG_PROVEEDORES(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_REG_CONTACTOS_x_PROVEEDOR(string xProveedor)
        { return Listar_REG_CONTACTOS_x_PROVEEDOR_Json(xProveedor); }

        internal static object Listar_REG_CONTACTOS_x_PROVEEDOR_Json(string xProveedor)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_CONTACTOS_x_PROVEEDOR> JsonResult = xMETODOS.Listar_REG_CONTACTOS_x_PROVEEDOR(out sMensaje_Error, xProveedor);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_REG_CONTACTO_PROVEEDOR(List<APP_ENTIDADES.cCONTACTOS_x_PROVEEDOR> xDatos, string xSESION)
        { return Insertar_Actualizar_REG_CONTACTO_PROVEEDOR_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_REG_CONTACTO_PROVEEDOR_Json(List<APP_ENTIDADES.cCONTACTOS_x_PROVEEDOR> xDatos, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_REG_CONTACTO_PROVEEDOR(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Eliminar_REG_CONTACTO_PROVEEDOR(string xID, string xUSER, string xSESION)
        { return Eliminar_REG_CONTACTO_PROVEEDOR_Json(xID, xUSER, xSESION); }

        internal static object Eliminar_REG_CONTACTO_PROVEEDOR_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Eliminar_REG_CONTACTO_PROVEEDOR(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }



        // Ventana: Empleados
        [WebMethod]
        public static object Listar_REG_EMPLEADOS(string xId_Estado)
        { return Listar_REG_EMPLEADOS_Json(xId_Estado); }

        internal static object Listar_REG_EMPLEADOS_Json(string xId_Estado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_EMPLEADOS> JsonResult = xMETODOS.Listar_REG_EMPLEADOS(out sMensaje_Error, xId_Estado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_REG_EMPLEADOS_BUSQ()
        { return Listar_REG_EMPLEADOS_BUSQ_Json(); }

        internal static object Listar_REG_EMPLEADOS_BUSQ_Json()
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_EMPLEADOS> JsonResult = xMETODOS.Listar_REG_EMPLEADOS_BUSQ(out sMensaje_Error);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }
                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_REG_EMPLEADOS(List<APP_ENTIDADES.cEMPLEADOS> xDatos, string xSESION)
        { return Insertar_Actualizar_REG_EMPLEADOS_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_REG_EMPLEADOS_Json(List<APP_ENTIDADES.cEMPLEADOS> xDatos, string xSESION)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_REG_EMPLEADOS(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }

        }

        [WebMethod]
        public static object Baja_REG_EMPLEADOS(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_REG_EMPLEADOS_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_REG_EMPLEADOS_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_REG_EMPLEADOS(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_REG_EMPLEADOS(string xID, string xUSER, string xSESION)
        { return Reactivar_REG_EMPLEADOS_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_REG_EMPLEADOS_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_REG_EMPLEADOS(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }


        // Articulos
        [WebMethod]
        public static object Listar_REG_ARTICULOS(string xEstado)
        { return Listar_REG_ARTICULOS_Json(xEstado); }

        internal static object Listar_REG_ARTICULOS_Json(string xEstado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_REG_ARTICULOS> JsonResult = xMETODOS.Listar_REG_ARTICULOS(out sMensaje_Error, xEstado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_REG_ARTICULOS_AFECTABLE()
        { return Listar_REG_ARTICULOS_AFECTABLE_Json(); }

        internal static object Listar_REG_ARTICULOS_AFECTABLE_Json()
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_REG_ARTICULOS> JsonResult = xMETODOS.Listar_REG_ARTICULOS_AFECTABLE(out sMensaje_Error);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_REG_ARTICULOS(List<APP_ENTIDADES.cREG_ARTICULOS> xDatos, string xSESION)
        { return Insertar_Actualizar_REG_ARTICULOS_Json(xDatos, xSESION); }

        internal static object Insertar_Actualizar_REG_ARTICULOS_Json(List<APP_ENTIDADES.cREG_ARTICULOS> xDatos, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                DataTable yDatos = Generico.ToDataSet(xDatos).Tables[0];

                // Convirtiendola en un XML...
                string result;
                using (StringWriter sw = new StringWriter())
                {
                    yDatos.WriteXml(sw);
                    result = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_REG_ARTICULOS(out sMensaje_Error, result, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Baja_REG_ARTICULOS(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_REG_ARTICULOS_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_REG_ARTICULOS_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_REG_ARTICULOS(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_REG_ARTICULOS(string xID, string xUSER, string xSESION)
        { return Reactivar_REG_ARTICULOS_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_REG_ARTICULOS_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_REG_ARTICULOS(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }


        // ASIGNACIONES

        [WebMethod]
        public static object Listar_REG_ASIGNACIONES_ENC(string xEstado)
        { return Listar_REG_ASIGNACIONES_ENC_Json(xEstado); }

        internal static object Listar_REG_ASIGNACIONES_ENC_Json(string xEstado)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_REG_ASIGNACIONES_ENC> JsonResult = xMETODOS.Listar_REG_ASIGNACIONES_ENC(out sMensaje_Error, xEstado);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Listar_REG_ASIGNACIONES_DET(string xID)
        { return Listar_REG_ASIGNACIONES_DET_Json(xID); }

        internal static object Listar_REG_ASIGNACIONES_DET_Json(string xID)
        {
            try
            {
                // Verificando llamada del Procedimiento...
                sMensaje_Error = string.Empty;

                // Llamada al Metodo de datos
                List<APP_ENTIDADES.TBL_REG_ASIGNACIONES_DET> JsonResult = xMETODOS.Listar_REG_ASIGNACIONES_DET(out sMensaje_Error, xID);

                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { return new { exito = false, Mensaje = sMensaje_Error }; }
                }

                return new { exito = true, Mensaje = JsonConvert.SerializeObject(JsonResult) };
            }
            catch (Exception e)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + e.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Insertar_Actualizar_REG_ASIGNACIONES(List<APP_ENTIDADES.cREG_ASIGNACIONES_ENC> xENC, List<APP_ENTIDADES.cREG_ASIGNACIONES_DET> xDET, string xSESION)
        { return Insertar_Actualizar_REG_ASIGNACIONES_Json(xENC, xDET, xSESION); }

        internal static object Insertar_Actualizar_REG_ASIGNACIONES_Json(List<APP_ENTIDADES.cREG_ASIGNACIONES_ENC> xENC, List<APP_ENTIDADES.cREG_ASIGNACIONES_DET> xDET, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                DataTable yENC = Generico.ToDataSet(xENC).Tables[0];
                DataTable yDET = Generico.ToDataSet(xDET).Tables[0];

                // Convirtiendola en un XML...
                string result_ENC = string.Empty, result_DET = string.Empty;
                using (StringWriter sw = new StringWriter())
                {
                    yENC.WriteXml(sw);
                    result_ENC = sw.ToString();
                }

                using (StringWriter sw = new StringWriter())
                {
                    yDET.WriteXml(sw);
                    result_DET = sw.ToString();
                }

                xMETODOS.Insertar_Actualizar_REG_ASIGNACIONES(out sMensaje_Error, result_ENC, result_DET, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error.Split('|')[0].ToString(), out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Baja_REG_ASIGNACIONES(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        { return Baja_REG_ASIGNACIONES_Json(xID, xBAJA, xOBS, xUSER, xSESION); }

        internal static object Baja_REG_ASIGNACIONES_Json(string xID, string xBAJA, string xOBS, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Baja_REG_ASIGNACIONES(out sMensaje_Error, xID, xBAJA, xOBS, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }

        [WebMethod]
        public static object Reactivar_REG_ASIGNACIONES(string xID, string xUSER, string xSESION)
        { return Reactivar_REG_ASIGNACIONES_Json(xID, xUSER, xSESION); }

        internal static object Reactivar_REG_ASIGNACIONES_Json(string xID, string xUSER, string xSESION)
        {
            // Verificando llamada del Procedimiento...
            sMensaje_Error = string.Empty;

            try
            {
                // Llamada al Metodo de datos
                xMETODOS.Reactivar_REG_ASIGNACIONES(out sMensaje_Error, xID, xUSER, xSESION);
                if (sMensaje_Error.Length > 0)
                {
                    long number1 = 0;
                    bool canConvert = long.TryParse(sMensaje_Error, out number1);
                    if (canConvert == false)
                    { xMi_Msg = new { exito = false, Mensaje = "Ocurrio un Error: " + sMensaje_Error }; }
                    else { xMi_Msg = new { exito = true, Mensaje = sMensaje_Error }; }
                }

                return xMi_Msg;
            }
            catch (Exception ex)
            {
                return new { exito = false, Mensaje = "Ocurrio un Error: " + ex.Message.ToString() };
            }
        }


    #endregion


}