using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using CrystalDecisions.Shared;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Web;
using System.Web.Script.Serialization;
using System.Collections.Generic;
using System.IO;
using TSHAK.Components;
using APP_CAPA_DATOS;
using APP_ENTIDADES;


public partial class _Default : System.Web.UI.Page 
{
    private static ReportDocument mostrar_informe = new ReportDocument();
    private static string sMensaje_Error = string.Empty;

    // Variables de Conexion
    private static APP_CAPA_DATOS.Acceso_Datos xMETODOS = new APP_CAPA_DATOS.Acceso_Datos();

    // Variables de Configuracion
    private static string wFOTO_01 = string.Empty, wFOTO_02 = string.Empty;
    private static string xNombre_Elabora = string.Empty, xCargo_Elabora = string.Empty, xArea_Elabora = string.Empty;

    // Variables de Titulos...
    public static string xEMPRESA = string.Empty, xDIRECCION = string.Empty, xPROYECTO = string.Empty, xTITULO = string.Empty, xUSER = string.Empty;
    private static string[] xVariable = new string[100];

    protected void Page_Load(object sender, EventArgs e)
    {        
        // Se recuperan los Datos Desencryptado
        try {
            SecureQueryString xCadena = new SecureQueryString(new byte[] { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 1, 2, 3, 4, 5, 8 }, Request.QueryString["data"]);
            
            // Se Asignan y se recuperan las Variables
            for (int i = 0; i < xCadena.Count; i++) 
            {
               xVariable[i] = xCadena[i].ToString();
            }

            // Para el Titulo de la Empresa, Sistema y Direccion...
            xPROYECTO = xVariable[1]; xEMPRESA = xVariable[2]; xDIRECCION = xVariable[3]; xTITULO = xVariable[4]; xUSER = xVariable[5];
            
        }
        catch (Exception ex) {
            this.xLeyenda.Value = "Error en los Parametros Enviados: " + ex.Message; return;
        }

        // Recuperando los LOGOS Actuales
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_VARIABLES> Mis_Logos = new List<APP_ENTIDADES.TBL_VARIABLES>();
        try
        {
            Mis_Logos = xMETODOS.Listar_LOGOS(out sMensaje_Error);

            if (Mis_Logos.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_VARIABLES xREG in Mis_Logos)
                {
                    // Asignando Valores
                    wFOTO_01 = Request.Url.GetLeftPart(UriPartial.Authority) + xREG.ID;
                    wFOTO_02 = Request.Url.GetLeftPart(UriPartial.Authority) + xREG.DESCRIPCION;
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        // Recuperando las Firmas...
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_FIRMAS_DOCUMENTOS> Mis_Firmas = new List<APP_ENTIDADES.TBL_FIRMAS_DOCUMENTOS>();
        try
        {
            Mis_Firmas = xMETODOS.Listar_Firmas_Documentos(out sMensaje_Error, 1);

            if (Mis_Firmas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_FIRMAS_DOCUMENTOS xREG in Mis_Firmas)
                {
                    // Asignando Valores
                    xNombre_Elabora = xREG.NOMBRE_01; xCargo_Elabora = xREG.CARGO_01; xArea_Elabora = xREG.NOMBRE_02;
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        // Visualizando el Reporte Correspondiente
        switch (xVariable[0])
        {
            case "1": // TIPOS DE COLORES
                Listado_Tipo_Colores(xVariable[6], xVariable[7]);
                break;
            case "2": // TIPOS DE MARCAS
                Listado_Tipo_Marcas(xVariable[6], xVariable[7]);
                break;
            case "3": // TIPOS DE MODELOS
                Listado_Tipo_Modelos(xVariable[6], xVariable[7]);
                break;
            case "4": // TIPOS DE CLASES
                Listado_Tipo_Clases(xVariable[6], xVariable[7]);
                break;
            case "5": // TIPOS DE PROCEDENCIAS
                Listado_Tipo_Procedencias(xVariable[6], xVariable[7]);
                break;
            case "6": // TIPOS DE ALTAS
                Listado_Tipo_Altas(xVariable[6], xVariable[7]);
                break;
            case "7": // TIPOS DE MOVIMIENTOS
                Listado_Tipo_Movimientos(xVariable[6], xVariable[7]);
                break;
            case "8": // TIPOS DE PROVEEDOR
                Listado_Tipo_Proveedor(xVariable[6], xVariable[7]);
                break;
            case "9": // TIPOS DE CONTACTO DEL PROVEEDOR
                Listado_Tipo_Contacto_Proveedor(xVariable[6], xVariable[7]);
                break;
            case "10": // TIPOS DE SEXOS
                Listado_Tipo_Sexos(xVariable[6], xVariable[7]);
                break;
            case "11": // CENTRO DE COSTOS
                Listado_Cat_Centros_Costos(xVariable[6], xVariable[7]);
                break;
            case "12": // CARGOS OCUPACIONALES
                Listado_Cat_Cargos_Ocupacionales(xVariable[6], xVariable[7]);
                break;
            case "13": // ALFABETICO DE EMPLEADOS
                Listado_Empleados(xVariable[6], xVariable[7]);
                break;
            case "14": // ALFABETICO DE PROVEEDORES Y CONTACTOS
                Listado_Proveedores_Contactos(xVariable[6], xVariable[7]);
                break;
            case "15": // CATALOGO DE ARTICULOS
                Reg_Catalogo_Articulos(xVariable[6], xVariable[7]);
                break;
            case "16": // ROLES
                Listado_Tipo_Roles(xVariable[6], xVariable[7]);
                break;
            case "17": // USUARIOS
                Listado_Usuarios(xVariable[6], xVariable[7]);
                break;
            case "18": // OPCIONES DEL SISTEMA
                Listado_Opciones_Sistema(xVariable[6], xVariable[7]);
                break;
            case "19": // ACCESOS DEL USUARIO
                Listado_Accesos_Usuario_Sistema(xVariable[6], xVariable[7], xVariable[8], xVariable[9]);
                break;
            case "20": // CATALOGO DE ARTICULOS
                Reg_Catalogo_Articulos_Cod_Barra(xVariable[6], xVariable[7]);
                break;
            case "21": // HOJA DE ASIGNACIONES
                Reg_Hoja_Asignaciones(xVariable[6], xVariable[7]);
                break;
            case "22": // ASIGNACIONES DEL PERIODO
                Reg_Asignaciones_Rango_Fecha(xVariable[6], xVariable[7], xVariable[8], xVariable[9]);
                break;
            default:
                break;
        }
    }

    // REPORTES DE LA APLICACION
    private void Listado_Tipo_Colores(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));
        
        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_TIPO_COLORES> oListas = new List<APP_ENTIDADES.TBL_TIPO_COLORES>();
        try
        {
            oListas = xMETODOS.Listar_CAT_TIPO_COLORES(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_TIPO_COLORES xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO, xREG.DESCRIPCION, xREG.ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_TIPO_COLORES";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_CAT_TIPO_COLORES.rpt", mReporte = "TIPO_COLORES.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "TIPO_COLORES.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Listado_Tipo_Marcas(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_TIPO_MARCAS> oListas = new List<APP_ENTIDADES.TBL_TIPO_MARCAS>();
        try
        {
            oListas = xMETODOS.Listar_CAT_TIPO_MARCAS(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_TIPO_MARCAS xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO, xREG.DESCRIPCION, xREG.ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_TIPO_MARCAS";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_CAT_TIPO_MARCAS.rpt", mReporte = "TIPO_MARCAS.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "TIPO_MARCAS.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Listado_Tipo_Modelos(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_TIPO_MODELOS> oListas = new List<APP_ENTIDADES.TBL_TIPO_MODELOS>();
        try
        {
            oListas = xMETODOS.Listar_CAT_TIPO_MODELOS(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_TIPO_MODELOS xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO, xREG.DESCRIPCION, xREG.ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_TIPO_MODELOS";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_CAT_TIPO_MODELOS.rpt", mReporte = "TIPO_MODELOS.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "TIPO_MODELOS.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Listado_Tipo_Clases(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_TIPO_CLASES> oListas = new List<APP_ENTIDADES.TBL_TIPO_CLASES>();
        try
        {
            oListas = xMETODOS.Listar_CAT_TIPO_CLASES(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_TIPO_CLASES xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO, xREG.DESCRIPCION, xREG.ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_TIPO_CLASES";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_CAT_TIPO_CLASES.rpt", mReporte = "TIPO_CLASES.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "TIPO_CLASES.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Listado_Tipo_Sexos(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_TIPO_SEXOS> oListas = new List<APP_ENTIDADES.TBL_TIPO_SEXOS>();
        try
        {
            oListas = xMETODOS.Listar_CAT_TIPO_SEXOS(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_TIPO_SEXOS xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO, xREG.DESCRIPCION, xREG.ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_TIPO_SEXOS";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_CAT_TIPO_SEXOS.rpt", mReporte = "TIPO_SEXOS.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "TIPO_SEXOS.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Listado_Tipo_Movimientos(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_TIPO_MOVIMIENTOS> oListas = new List<APP_ENTIDADES.TBL_TIPO_MOVIMIENTOS>();
        try
        {
            oListas = xMETODOS.Listar_CAT_TIPO_MOVIMIENTOS(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_TIPO_MOVIMIENTOS xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO, xREG.DESCRIPCION, xREG.ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_TIPO_MOVIMIENTOS";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_CAT_TIPO_MOVIMIENTOS.rpt", mReporte = "TIPO_MOVIMIENTOS.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "TIPO_MOVIMIENTOS.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Listado_Tipo_Proveedor(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_TIPO_PROVEEDOR> oListas = new List<APP_ENTIDADES.TBL_TIPO_PROVEEDOR>();
        try
        {
            oListas = xMETODOS.Listar_CAT_TIPO_PROVEEDOR(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_TIPO_PROVEEDOR xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO, xREG.DESCRIPCION, xREG.ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_TIPO_PROVEEDOR";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_CAT_TIPO_PROVEEDOR.rpt", mReporte = "TIPO_PROVEEDOR.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "TIPO_PROVEEDOR.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Listado_Tipo_Contacto_Proveedor(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_TIPO_CONTACTO_PROVEEDOR> oListas = new List<APP_ENTIDADES.TBL_TIPO_CONTACTO_PROVEEDOR>();
        try
        {
            oListas = xMETODOS.Listar_CAT_TIPO_CONTACTO_PROVEEDOR(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_TIPO_CONTACTO_PROVEEDOR xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO, xREG.DESCRIPCION, xREG.ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_TIPO_CONTACTO_PROVEEDOR";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_CAT_TIPO_CONTACTO_PROVEEDOR.rpt", mReporte = "TIPO_CONTACTO_PROVEEDOR.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "TIPO_CONTACTO_PROVEEDOR.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Listado_Cat_Cargos_Ocupacionales(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_CARGOS> oListas = new List<APP_ENTIDADES.TBL_CARGOS>();
        try
        {
            oListas = xMETODOS.Listar_CAT_CARGOS_OCUPACIONAL(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_CARGOS xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO, xREG.DESCRIPCION, xREG.ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_CAT_CARGOS";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_CAT_CARGOS.rpt", mReporte = "CAT_CARGOS.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "CAT_CARGOS.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Listado_Cat_Centros_Costos(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_OFICINAS> oListas = new List<APP_ENTIDADES.TBL_OFICINAS>();
        try
        {
            oListas = xMETODOS.Listar_CAT_CENTROS_COSTOS(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_OFICINAS xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO, xREG.DESCRIPCION, xREG.ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_CAT_CENTRO_COSTO";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_CAT_CENTRO_COSTOS.rpt", mReporte = "CAT_CENTRO_COSTOS.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "CAT_CENTRO_COSTOS.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Listado_Tipo_Procedencias(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_TIPO_PROCEDENCIAS> oListas = new List<APP_ENTIDADES.TBL_TIPO_PROCEDENCIAS>();
        try
        {
            oListas = xMETODOS.Listar_CAT_TIPO_PROCEDENCIAS(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_TIPO_PROCEDENCIAS xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO, xREG.DESCRIPCION, xREG.ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_TIPO_PROCEDENCIAS";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_CAT_TIPO_PROCEDENCIAS.rpt", mReporte = "TIPO_PROCEDENCIAS.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "TIPO_PROCEDENCIAS.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Listado_Tipo_Altas(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_TIPO_ALTAS> oListas = new List<APP_ENTIDADES.TBL_TIPO_ALTAS>();
        try
        {
            oListas = xMETODOS.Listar_CAT_TIPO_ALTAS(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_TIPO_ALTAS xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO, xREG.DESCRIPCION, xREG.ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_TIPO_ALTAS";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_CAT_TIPO_ALTAS.rpt", mReporte = "TIPO_ALTAS.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "TIPO_ALTAS.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Listado_Empleados(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xNOMBRE", typeof(string));
        xDatos.Columns.Add("xINSS", typeof(string));
        xDatos.Columns.Add("xCEDULA", typeof(string));
        xDatos.Columns.Add("xCARGO", typeof(string));
        xDatos.Columns.Add("xCENTRO_COSTO", typeof(string));
        xDatos.Columns.Add("xINGRESO", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_EMPLEADOS> oListas = new List<APP_ENTIDADES.TBL_EMPLEADOS>();
        try
        {
            oListas = xMETODOS.Listar_REG_EMPLEADOS(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_EMPLEADOS xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO, xREG.NOMBRE, xREG.INSS, xREG.CED, xREG.DESC_CARGO, xREG.DESC_AREA, xREG.INGRESO, xREG.DESC_ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_REG_EMPLEADOS";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_REG_EMPLEADOS.rpt", mReporte = "ALFABETICO_EMPLEADOS.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "ALFABETICO_EMPLEADOS.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Listado_Proveedores_Contactos(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xNOMBRE_COMPLETO", typeof(string));
        xDatos.Columns.Add("xIDENTIFICACION", typeof(string));
        xDatos.Columns.Add("xCODIGO_CONTACTO", typeof(string));
        xDatos.Columns.Add("xNOMBRE_COMPLETO_CONTACTO", typeof(string));
        xDatos.Columns.Add("xIDENTIFICACION_CONTACTO", typeof(string));
        xDatos.Columns.Add("xTELEFONO_CONTACTO", typeof(string));
        xDatos.Columns.Add("xTIPO_CONTACTO", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));
        xDatos.Columns.Add("xEDIT_CONTACTO", typeof(string));
        xDatos.Columns.Add("xINGRESO", typeof(string));
        xDatos.Columns.Add("xINGRESO_CONTACTO", typeof(string));


        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_REG_CONTACTOS_x_PROVEEDOR_RPT> oListas = new List<APP_ENTIDADES.TBL_REG_CONTACTOS_x_PROVEEDOR_RPT>();
        try
        {
            oListas = xMETODOS.rpt_Listado_Contactos_x_Proveedor(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_REG_CONTACTOS_x_PROVEEDOR_RPT xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO, xREG.NOMBRE_COMPLETO, xREG.IDENTIFICACION, xREG.CODIGO_CONTACTO, xREG.NOMBRE_COMPLETO_CONTACTO, xREG.IDENTIFICACION_CONTACTO, 
                                    xREG.TELEFONOS, xREG.TIPO_CONTACTO, xREG.ESTADO, xREG.BAJA, xREG.EDIT, xREG.EDIT_CONTACTO, xREG.INGRESO, xREG.INGRESO_CONTACTO);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_REG_PROVEEDORES";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_REG_PROVEEDORES.rpt", mReporte = "ALFABETICO_PROVEEDORES.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "ALFABETICO_PROVEEDORES.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Reg_Catalogo_Articulos(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xREG", typeof(string));
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xSERIE", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xCLASE", typeof(string));
        xDatos.Columns.Add("xMODELO", typeof(string));
        xDatos.Columns.Add("xMARCA", typeof(string));
        xDatos.Columns.Add("xCOLOR", typeof(string));
        xDatos.Columns.Add("xPROCEDENCIA", typeof(string));
        xDatos.Columns.Add("COSTO", typeof(string));
        xDatos.Columns.Add("FECHA_COMPRA", typeof(string));
        xDatos.Columns.Add("xINGRESO", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_REG_ARTICULOS> oListas = new List<APP_ENTIDADES.TBL_REG_ARTICULOS>();
        try
        {
            oListas = xMETODOS.Listar_REG_ARTICULOS(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_REG_ARTICULOS xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.COD, xREG.CODIGO, xREG.SERIE, xREG.DESCRIPCION, xREG.DESC_CLASE, xREG.DESC_MODELO, xREG.DESC_MARCA, xREG.DESC_COLOR, 
                        xREG.DESC_PROCEDENCIA, xREG.COSTO, xREG.FECHA_COMPRA, xREG.INGRESO, xREG.DESC_ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_REG_ARTICULOS";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_REG_CATALOGO_ARTICULOS.rpt", mReporte = "CATALOGO_ARTICULOS.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "CATALOGO_ARTICULOS.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Listado_Tipo_Roles(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_ROL> oListas = new List<APP_ENTIDADES.TBL_ROL>();
        try
        {
            oListas = xMETODOS.Listar_SYS_ROLES(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_ROL xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO, xREG.DESCRIPCION, xREG.ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_TIPO_ROL";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_CAT_TIPO_ROL.rpt", mReporte = "TIPO_ROL.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "TIPO_ROL.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Listado_Usuarios(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xROL", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_USUARIOS> oListas = new List<APP_ENTIDADES.TBL_USUARIOS>();
        try
        {
            oListas = xMETODOS.Listar_SYS_USUARIOS(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_USUARIOS xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO, xREG.DESCRIPCION, xREG.DESC_ROL, xREG.ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_USUARIOS";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_REG_USUARIOS.rpt", mReporte = "USUARIOS.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "USUARIOS.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Listado_Opciones_Sistema(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCOD_01", typeof(string));
        xDatos.Columns.Add("xCOD_02", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xNIVEL", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_OPCIONES> oListas = new List<APP_ENTIDADES.TBL_OPCIONES>();
        try
        {
            oListas = xMETODOS.Listar_SYS_OPCIONES(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_OPCIONES xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO_01, xREG.CODIGO_02, xREG.DESCRIPCION, xREG.DESC_NIVEL, xREG.ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_OPCIONES";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_REG_OPCIONES_SISTEMA.rpt", mReporte = "OPCIONES_SISTEMA.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "OPCIONES_SISTEMA.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Listado_Accesos_Usuario_Sistema(string xEstado, string xUser, string xRol, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xUSUARIO", typeof(string));
        xDatos.Columns.Add("xROL", typeof(string));
        xDatos.Columns.Add("xEJECUTAR", typeof(string));
        xDatos.Columns.Add("xVISUALIZAR", typeof(string));
        xDatos.Columns.Add("xIMPRIMIR", typeof(string));
        xDatos.Columns.Add("xBORRAR", typeof(string));
        xDatos.Columns.Add("xINSERTAR", typeof(string));
        xDatos.Columns.Add("xACTUALIZAR", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_ACCESOS> oListas = new List<APP_ENTIDADES.TBL_ACCESOS>();
        try
        {
            oListas = xMETODOS.Listar_Accesos(out sMensaje_Error, xEstado, xUser, xRol);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_ACCESOS xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.CODIGO_01, xREG.DESC, xREG.USER, xREG.ROL, (xREG.EJEC == true) ? "SI" : "NO", (xREG.VIS == true) ? "SI" : "NO", (xREG.IMP == true) ? "SI" : "NO", 
                        (xREG.DEL == true) ? "SI" : "NO", (xREG.INS == true) ? "SI" : "NO", (xREG.ACT == true) ? "SI" : "NO", xREG.ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_REG_ACCESOS_USUARIO";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_REG_ACCESOS_USUARIO_SISTEMA.rpt", mReporte = "ACCESOS_USUARIO_SISTEMA.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "ACCESOS_USUARIO_SISTEMA.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Reg_Catalogo_Articulos_Cod_Barra(string xEstado, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xREG", typeof(string));
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xDESCRIPCION", typeof(string));
        xDatos.Columns.Add("xCLASE", typeof(string));
        xDatos.Columns.Add("xMODELO", typeof(string));
        xDatos.Columns.Add("xMARCA", typeof(string));
        xDatos.Columns.Add("xCOLOR", typeof(string));
        xDatos.Columns.Add("xINGRESO", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_REG_ARTICULOS> oListas = new List<APP_ENTIDADES.TBL_REG_ARTICULOS>();
        try
        {
            oListas = xMETODOS.Listar_REG_ARTICULOS(out sMensaje_Error, xEstado);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_REG_ARTICULOS xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.COD, xREG.CODIGO, xREG.DESCRIPCION, xREG.DESC_CLASE, xREG.DESC_MODELO, xREG.DESC_MARCA, xREG.DESC_COLOR, xREG.INGRESO, xREG.DESC_ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_REG_ARTICULOS";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_REG_CATALOGO_ARTICULOS_BAUCHER.rpt", mReporte = "CATALOGO_ARTICULOS.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "CATALOGO_ARTICULOS.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Reg_Asignaciones_Rango_Fecha(string xEstado, string xDesde, string xHasta, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xREG", typeof(string));
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xMOVIMIENTO", typeof(string));
        xDatos.Columns.Add("xFECHA", typeof(string));
        xDatos.Columns.Add("xEMPLEADO", typeof(string));
        xDatos.Columns.Add("xCONCEPTO", typeof(string));
        xDatos.Columns.Add("xCANTIDAD", typeof(string));
        xDatos.Columns.Add("xTOTAL", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_REG_ASIGNACIONES_ENC> oListas = new List<APP_ENTIDADES.TBL_REG_ASIGNACIONES_ENC>();
        try
        {
            oListas = xMETODOS.rpt_Listar_REG_ASIGNACIONES_RANGO_FECHA(out sMensaje_Error, xEstado, xDesde, xHasta);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_REG_ASIGNACIONES_ENC xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.ID, xREG.CODIGO, xREG.DESC_TIPO_MOVIMIENTO, xREG.FECHA, xREG.EMPLEADO, xREG.CONCEPTO, 
                        xREG.CANTIDAD, xREG.COSTO, xREG.DESC_ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_REG_ASIGNACIONES_RANGO_FECHA";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_REG_ASIGNACIONES_RANGO_FECHA.rpt", mReporte = "ASIGNACIONES_RANGO_FECHA.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "ASIGNACIONES_RANGO_FECHA.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

    private void Reg_Hoja_Asignaciones(string xID, string xTipo)
    {
        // Se define la Fuente de Datos
        DataSet yDatos = new DataSet(); DataTable xDatos = new DataTable();

        // Se define la Estructura de la tabla 
        xDatos.Columns.Add("xREG", typeof(string));
        xDatos.Columns.Add("xCODIGO", typeof(string));
        xDatos.Columns.Add("xMOVIMIENTO", typeof(string));
        xDatos.Columns.Add("xFECHA", typeof(string));
        xDatos.Columns.Add("xEMPLEADO", typeof(string));
        xDatos.Columns.Add("xCEDULA", typeof(string));
        xDatos.Columns.Add("xCARGO", typeof(string));
        xDatos.Columns.Add("xAREA", typeof(string));
        xDatos.Columns.Add("xCONCEPTO", typeof(string));
        xDatos.Columns.Add("xCANTIDAD", typeof(string));
        xDatos.Columns.Add("xCODIGO_SIBE", typeof(string));
        xDatos.Columns.Add("xSERIE", typeof(string));
        xDatos.Columns.Add("xDESC_ARTICULO", typeof(string));
        xDatos.Columns.Add("xCLASE", typeof(string));
        xDatos.Columns.Add("xMODELO", typeof(string));
        xDatos.Columns.Add("xMARCA", typeof(string));
        xDatos.Columns.Add("xCOLOR", typeof(string));
        xDatos.Columns.Add("xPROCEDENCIA", typeof(string));
        xDatos.Columns.Add("xCOSTO", typeof(string));
        xDatos.Columns.Add("xESTADO", typeof(string));
        xDatos.Columns.Add("xBAJA", typeof(string));
        xDatos.Columns.Add("xEDIT", typeof(string));

        // Se recuperan los Datos de la Fuente
        sMensaje_Error = string.Empty;
        List<APP_ENTIDADES.TBL_REG_HOJA_ASIGNACIONES> oListas = new List<APP_ENTIDADES.TBL_REG_HOJA_ASIGNACIONES>();
        try
        {
            oListas = xMETODOS.rpt_Listar_REG_HOJA_ASIGNACIONES(out sMensaje_Error, xID);
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Ocurrio un Error en la Conexion al Servidor de Datos: " + ex.Message; return;
        }

        if (sMensaje_Error.Length > 0)
        { this.xLeyenda.Value = "Error del Método del Servidor de Datos: " + sMensaje_Error; return; }

        try
        {
            if (oListas.Count > 0)
            {
                foreach (APP_ENTIDADES.TBL_REG_HOJA_ASIGNACIONES xREG in oListas)
                {
                    xDatos.Rows.Add(xREG.ID, xREG.CODIGO, xREG.DESC_TIPO_MOVIMIENTO, xREG.FECHA, xREG.EMPLEADO, xREG.CEDULA, xREG.CARGO, xREG.AREA, xREG.CONCEPTO, xREG.CANTIDAD,
                        xREG.COD_ARTICULO, xREG.SERIE_ARTICULO, xREG.DESC_ARTICULO, xREG.CLASE_ARTICULO, xREG.MODELO_ARTICULO, xREG.MARCA_ARTICULO, xREG.COLOR_ARTICULO,
                        xREG.PROCEDENCIA_ARTICULO, xREG.COSTO, xREG.DESC_ESTADO, xREG.BAJA, xREG.EDIT);
                }
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en el Llenado de los Datos al Reporte: " + ex.Message; return;
        }

        try
        {
            // Se define el Reporte
            yDatos.Tables.Add(xDatos);
            yDatos.Tables[0].TableName = "TBL_REG_HOJA_ASIGNACIONES";

            // Cargar contenidos del Diseñador de Reportes
            string xReporte = "rpt_REG_HOJA_ASIGNACIONES.rpt", mReporte = "HOJA_ASIGNACIONES.pdf";
            mostrar_informe.Load(Server.MapPath(xReporte));
            mostrar_informe.SetDataSource(yDatos);
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_01"].Text = "'" + xPROYECTO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_02"].Text = "'" + xEMPRESA + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_03"].Text = "'" + xDIRECCION + "'";
            mostrar_informe.DataDefinition.FormulaFields["xTitulo_04"].Text = "'" + xTITULO + "'";
            mostrar_informe.DataDefinition.FormulaFields["xUSER"].Text = "'" + xUSER + "'";

            mostrar_informe.DataDefinition.FormulaFields["wNombre_Elabora"].Text = "'" + xNombre_Elabora + "'";
            mostrar_informe.DataDefinition.FormulaFields["wCargo_Elabora"].Text = "'" + xCargo_Elabora + "'";
            mostrar_informe.DataDefinition.FormulaFields["wArea_Elabora"].Text = "'" + xArea_Elabora + "'";

            // Variable de Configuración...
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_01"].Text = "'" + wFOTO_01 + "'";
            mostrar_informe.DataDefinition.FormulaFields["wFOTO_02"].Text = "'" + wFOTO_02 + "'";

            CrystalReportViewer1.ReportSource = mostrar_informe;
            CrystalReportViewer1.DataBind();

            // bloque de código donde exportamos el reporte a pdf directamente
            if (int.Parse(xTipo) == 1)
            {
                // bloque de código donde exportamos el reporte a pdf directamente
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
            else if (int.Parse(xTipo) == 2)
            {
                // bloque de código donde exportamos el reporte a xlsx directamente
                mReporte = "HOJA_ASIGNACIONES.xls";
                using (var mStream = (System.IO.Stream)mostrar_informe.ExportToStream(CrystalDecisions.Shared.ExportFormatType.Excel))
                {
                    byte[] byteArray = null;
                    byteArray = new byte[mStream.Length];
                    mStream.Read(byteArray, 0, Convert.ToInt32(mStream.Length - 1));

                    Response.Clear();
                    Response.Buffer = true;
                    Response.ContentType = "application/xls";
                    Response.AddHeader("Content-Disposition", "inline;filename=" + mReporte);
                    Response.BinaryWrite(byteArray);
                }
                Response.Flush();
                Response.Close();
                Response.End();

                mostrar_informe.Dispose(); mostrar_informe.Close();
            }
        }
        catch (Exception ex)
        {
            this.xLeyenda.Value = "Error en la Invocación Final del Reporte: " + ex.Message; return;
        }
    }

}