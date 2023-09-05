using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using APP_ENTIDADES;

namespace APP_CAPA_DATOS
{
    public class Acceso_Datos
    {
        // Campos de la Clase
        private static string xCONEXION = ConfigurationManager.ConnectionStrings["My_DB_DATOS_01"].ConnectionString;
        private static string xSEGURIDAD = ConfigurationManager.ConnectionStrings["My_DB_DATOS_02"].ConnectionString;
        
        private static DataTable xFuentes_Datos = null;
        private static string cError = "Error en el Llamado del Servicio: ";
                
        // Módulo de Seguridad
        #region Seguridad
                    
            // Tabla: OPCIONES
            public List<APP_ENTIDADES.TBL_OPCIONES> Listar_SYS_OPCIONES(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_OPCIONES> oLista = new List<APP_ENTIDADES.TBL_OPCIONES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Seguridad.Listar_SYS_OPCIONES";
                        
                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];
                            

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_OPCIONES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  CODIGO_01 = xREG["xCOD_01"].ToString(),
                                                  CODIGO_02 = xREG["xCOD_02"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString(),
                                                  ID_NIVEL = xREG["xNIVEL"].ToString(),
                                                  DESC_NIVEL = xREG["xDESC_NIVEL"].ToString(),
                                                  RAYA = xREG["xRAYA"].ToString(),
                                                  ORDEN = xREG["xORDEN"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES> Listar_SYS_NIVELES(out string xMsg)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.Listar_SYS_NIVELES";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            
                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }
                    
            public void INS_ACT_SYS_OPCIONES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.INS_ACT_SYS_OPCIONES";
                        
                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_SYS_OPCIONES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.BAJA_SYS_OPCIONES";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_SYS_OPCIONES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.REACTIVAR_SYS_OPCIONES";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }



            // Tabla: ACCESOS
            public List<APP_ENTIDADES.TBL_ACCESOS> Listar_Accesos(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_ACCESOS> oLista = new List<APP_ENTIDADES.TBL_ACCESOS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Seguridad.Listar_Accesos";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xROL", SqlDbType.Int).Value = Args[2];
                            
                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_ACCESOS
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  CODIGO_01 = xREG["xCOD_01"].ToString(),
                                                  CODIGO_02 = xREG["xCOD_02"].ToString(),
                                                  DESC = xREG["xDESC"].ToString(),
                                                  EJEC = (xREG["xEJEC"].ToString() == "1") ? true : false,
                                                  VIS = (xREG["xVIS"].ToString() == "1") ? true : false,
                                                  IMP = (xREG["xIMP"].ToString() == "1") ? true : false,
                                                  DEL = (xREG["xBOR"].ToString() == "1") ? true : false,
                                                  INS = (xREG["xINS"].ToString() == "1") ? true : false,
                                                  ACT = (xREG["xACT"].ToString() == "1") ? true : false,
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  ROL = xREG["xROL"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void ASIGNAR_SYS_ACCESOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.ASIGNAR_ACCESOS";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[0];
                            COMANDO.Parameters.Add("@xROL", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void ACTUALIZAR_ACCESOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.ACTUALIZAR_ACCESO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_SYS_ACCESOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.BAJA_SYS_ACCESOS";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_SYS_ACCESOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.REACTIVAR_SYS_ACCESOS";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }


            // Tabla: ROL
            public List<APP_ENTIDADES.TBL_ROL> Listar_SYS_ROLES(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_ROL> oLista = new List<APP_ENTIDADES.TBL_ROL>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Seguridad.Listar_SYS_ROLES";
                        
                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];


                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_ROL
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES> Listar_SYS_ROLES_AFECTABLE(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.Listar_SYS_ROLES_AFECTABLE";
                        
                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            
                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void Insertar_Actualizar_SYS_ROLES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.INS_ACT_SYS_ROLES";
                        
                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_SYS_ROLES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.BAJA_SYS_ROLES";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_SYS_ROLES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.REACTIVAR_SYS_ROLES";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

        
            // Tabla: USUARIOS
            public List<APP_ENTIDADES.TBL_USUARIOS> Listar_SYS_USUARIOS(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_USUARIOS> oLista = new List<APP_ENTIDADES.TBL_USUARIOS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Seguridad.Listar_SYS_USUARIOS";
                        
                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];
                            

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_USUARIOS
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  ID_ROL = xREG["xID_ROL"].ToString(),
                                                  DESC_ROL = xREG["xDESC_ROL"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString(),
                                                  UID = xREG["xUID"].ToString(),
                                                  PWD = xREG["xPWD"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES> Listar_SYS_USUARIOS_AFECTABLE(out string xMsg)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.Listar_SYS_USUARIOS_AFECTABLE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            
                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }
                    
            public void Insertar_Actualizar_SYS_USUARIOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.INS_ACT_SYS_USUARIOS";
                        
                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_SYS_USUARIOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.BAJA_SYS_USUARIOS";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_SYS_USUARIOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.REACTIVAR_SYS_USUARIOS";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            

            // Sesiones y Bitacoras
            public List<APP_ENTIDADES.TBL_SESIONES> Listar_Sesiones(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_SESIONES> oLista = new List<APP_ENTIDADES.TBL_SESIONES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Seguridad.Listar_SESIONES";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xUSUARIO", SqlDbType.Int).Value = Args[0];
                            
                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_SESIONES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  FECHA = xREG["xFECHA"].ToString(),
                                                  USUARIO = xREG["xUSUARIO"].ToString(),
                                                  ROL = xREG["xROL"].ToString(),
                                                  ESTADO = xREG["xESTADO"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_BITACORAS> Listar_Bitacoras(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_BITACORAS> oLista = new List<APP_ENTIDADES.TBL_BITACORAS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Seguridad.Listar_BITACORAS";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[0];
                            

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_BITACORAS
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  HORA = xREG["xHORA"].ToString(),
                                                  VENTANA = xREG["xVENTANA"].ToString(),
                                                  ANTES = xREG["xANTES"].ToString(),
                                                  DESPUES = xREG["xDESPUES"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }
                            
        
        #endregion

        // Módulo de Subir Dcoumentos...
        #region Subir_Documentos

            public List<APP_ENTIDADES.TBL_DOCUMENTOS> Listar_Adjuntos(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_DOCUMENTOS> oLista = new List<APP_ENTIDADES.TBL_DOCUMENTOS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.Listar_Adjuntos";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xTIPO", SqlDbType.Int).Value = Args[1];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_DOCUMENTOS
                                              {
                                                  id = xREG["xID"].ToString(),
                                                  nbarchivo = xREG["xARCHIVO"].ToString(),
                                                  ext = xREG["xEXTENSION"].ToString(),
                                                  urlarchivo = xREG["xURL"].ToString(),
                                                  server = xREG["xSERVER"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES> URL_ARCHIVO(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.URL_ARCHIVO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];


                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void INS_CARGA_ARCHIVOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.INS_CARGA_ARCHIVOS";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void DEL_CARGA_ARCHIVOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.DEL_CARGA_ARCHIVOS";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

        #endregion

        // Módulo de Asignación de Activos Fijos
        #region Asignacion_Activos_Fijos

            // Tabla: TIPOS DE COLORES
            public List<APP_ENTIDADES.TBL_TIPO_COLORES> Listar_CAT_TIPO_COLORES(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_TIPO_COLORES> oLista = new List<APP_ENTIDADES.TBL_TIPO_COLORES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_CAT_COLOR";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_TIPO_COLORES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES> Listar_CAT_TIPO_COLORES_AFECTABLE(out string xMsg)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.Listar_CAT_COLOR_AFECTABLE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            
                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void Insertar_Actualizar_CAT_TIPO_COLORES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.INS_ACT_CAT_COLOR";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_CAT_TIPO_COLORES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.BAJA_CAT_COLOR";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_CAT_TIPO_COLORES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.REACTIVAR_CAT_COLOR";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }



            // Tabla: TIPOS DE CLASES
            public List<APP_ENTIDADES.TBL_TIPO_CLASES> Listar_CAT_TIPO_CLASES(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_TIPO_CLASES> oLista = new List<APP_ENTIDADES.TBL_TIPO_CLASES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_CAT_CLASE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_TIPO_CLASES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES> Listar_CAT_TIPO_CLASES_AFECTABLE(out string xMsg)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.Listar_CAT_CLASE_AFECTABLE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            
                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void Insertar_Actualizar_CAT_TIPO_CLASES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.INS_ACT_CAT_CLASE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_CAT_TIPO_CLASES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.BAJA_CAT_CLASE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_CAT_TIPO_CLASES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.REACTIVAR_CAT_CLASE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }


            // Tabla: TIPOS DE MODELOS
            public List<APP_ENTIDADES.TBL_TIPO_MODELOS> Listar_CAT_TIPO_MODELOS(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_TIPO_MODELOS> oLista = new List<APP_ENTIDADES.TBL_TIPO_MODELOS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_CAT_MODELO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_TIPO_MODELOS
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES> Listar_CAT_TIPO_MODELOS_AFECTABLE(out string xMsg)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.Listar_CAT_MODELO_AFECTABLE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            
                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void Insertar_Actualizar_CAT_TIPO_MODELOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.INS_ACT_CAT_MODELO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_CAT_TIPO_MODELOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.BAJA_CAT_MODELO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_CAT_TIPO_MODELOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.REACTIVAR_CAT_MODELO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }


            // Tabla: TIPOS DE MARCAS
            public List<APP_ENTIDADES.TBL_TIPO_MARCAS> Listar_CAT_TIPO_MARCAS(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_TIPO_MARCAS> oLista = new List<APP_ENTIDADES.TBL_TIPO_MARCAS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_CAT_MARCA";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_TIPO_MARCAS
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES> Listar_CAT_TIPO_MARCAS_AFECTABLE(out string xMsg)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.Listar_CAT_MARCA_AFECTABLE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            
                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void Insertar_Actualizar_CAT_TIPO_MARCAS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.INS_ACT_CAT_MARCA";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_CAT_TIPO_MARCAS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.BAJA_CAT_MARCA";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_CAT_TIPO_MARCAS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.REACTIVAR_CAT_MARCA";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }


            // Tabla: TIPOS DE PROCEDENCIAS
            public List<APP_ENTIDADES.TBL_TIPO_PROCEDENCIAS> Listar_CAT_TIPO_PROCEDENCIAS(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_TIPO_PROCEDENCIAS> oLista = new List<APP_ENTIDADES.TBL_TIPO_PROCEDENCIAS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_CAT_PROCEDENCIA";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_TIPO_PROCEDENCIAS
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES> Listar_CAT_TIPO_PROCEDENCIAS_AFECTABLE(out string xMsg)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.Listar_CAT_PROCEDENCIA_AFECTABLE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void Insertar_Actualizar_CAT_TIPO_PROCEDENCIAS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.INS_ACT_CAT_PROCEDENCIA";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_CAT_TIPO_PROCEDENCIAS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.BAJA_CAT_PROCEDENCIA";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_CAT_TIPO_PROCEDENCIAS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.REACTIVAR_CAT_PROCEDENCIA";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }


            // Tabla: TIPOS DE SEXOS
            public List<APP_ENTIDADES.TBL_TIPO_SEXOS> Listar_CAT_TIPO_SEXOS(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_TIPO_SEXOS> oLista = new List<APP_ENTIDADES.TBL_TIPO_SEXOS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_CAT_SEXO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_TIPO_SEXOS
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES> Listar_CAT_TIPO_SEXOS_AFECTABLE(out string xMsg)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.Listar_CAT_SEXO_AFECTABLE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void Insertar_Actualizar_CAT_TIPO_SEXOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.INS_ACT_CAT_SEXO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_CAT_TIPO_SEXOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.BAJA_CAT_SEXO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_CAT_TIPO_SEXOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.REACTIVAR_CAT_SEXO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }


            // Tabla: TIPOS DE MOVIMIENTOS
            public List<APP_ENTIDADES.TBL_TIPO_MOVIMIENTOS> Listar_CAT_TIPO_MOVIMIENTOS(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_TIPO_MOVIMIENTOS> oLista = new List<APP_ENTIDADES.TBL_TIPO_MOVIMIENTOS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_CAT_TIPO_MOVIMIENTO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_TIPO_MOVIMIENTOS
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES> Listar_CAT_TIPO_MOVIMIENTOS_AFECTABLE(out string xMsg)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.Listar_CAT_TIPO_MOVIMIENTO_AFECTABLE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void Insertar_Actualizar_CAT_TIPO_MOVIMIENTOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.INS_ACT_CAT_TIPO_MOVIMIENTO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_CAT_TIPO_MOVIMIENTOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.BAJA_CAT_TIPO_MOVIMIENTO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_CAT_TIPO_MOVIMIENTOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.REACTIVAR_CAT_TIPO_MOVIMIENTO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }


            // Tabla: TIPOS DE PROVEEDORES
            public List<APP_ENTIDADES.TBL_TIPO_PROVEEDOR> Listar_CAT_TIPO_PROVEEDOR(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_TIPO_PROVEEDOR> oLista = new List<APP_ENTIDADES.TBL_TIPO_PROVEEDOR>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_CAT_TIPO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_TIPO_PROVEEDOR
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES> Listar_CAT_TIPO_PROVEEDOR_AFECTABLE(out string xMsg)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.Listar_CAT_TIPO_AFECTABLE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void Insertar_Actualizar_CAT_TIPO_PROVEEDOR(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.INS_ACT_CAT_TIPO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_CAT_TIPO_PROVEEDOR(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.BAJA_CAT_TIPO_PROVEEDOR";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_CAT_TIPO_PROVEEDOR(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.REACTIVAR_CAT_TIPO_PROVEEDOR";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }


            // Tabla: TIPOS DE CONTACTO PROVEEDORES
            public List<APP_ENTIDADES.TBL_TIPO_CONTACTO_PROVEEDOR> Listar_CAT_TIPO_CONTACTO_PROVEEDOR(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_TIPO_CONTACTO_PROVEEDOR> oLista = new List<APP_ENTIDADES.TBL_TIPO_CONTACTO_PROVEEDOR>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_CAT_TIPO_CONTACTO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_TIPO_CONTACTO_PROVEEDOR
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES> Listar_CAT_TIPO_CONTACTO_PROVEEDOR_AFECTABLE(out string xMsg)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.Listar_CAT_TIPO_CONTACTO_AFECTABLE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void Insertar_Actualizar_CAT_TIPO_CONTACTO_PROVEEDOR(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.INS_ACT_CAT_TIPO_CONTACTO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_CAT_TIPO_CONTACTO_PROVEEDOR(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.BAJA_CAT_TIPO_CONTACTO_PROVEEDOR";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_CAT_TIPO_CONTACTO_PROVEEDOR(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.REACTIVAR_CAT_TIPO_CONTACTO_PROVEEDOR";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }


            // Tabla: TIPOS DE ALTAS
            public List<APP_ENTIDADES.TBL_TIPO_ALTAS> Listar_CAT_TIPO_ALTAS(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_TIPO_ALTAS> oLista = new List<APP_ENTIDADES.TBL_TIPO_ALTAS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_CAT_TIPO_ALTA";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_TIPO_ALTAS
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES> Listar_CAT_TIPO_ALTAS_AFECTABLE(out string xMsg)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.Listar_CAT_TIPO_ALTA_AFECTABLE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void Insertar_Actualizar_CAT_TIPO_ALTAS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.INS_ACT_CAT_TIPO_ALTA";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_CAT_TIPO_ALTAS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.BAJA_CAT_TIPO_ALTA";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_CAT_TIPO_ALTAS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.REACTIVAR_CAT_TIPO_ALTA";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }


            // Tabla: AREA FUNCIONAL O CENTROS DE COSTOS
            public List<APP_ENTIDADES.TBL_OFICINAS> Listar_CAT_CENTROS_COSTOS(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_OFICINAS> oLista = new List<APP_ENTIDADES.TBL_OFICINAS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_CAT_AREA_FUNCIONAL";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_OFICINAS
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES_BUSQ> Listar_CAT_CENTRO_COSTOS_BUSQ(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_VARIABLES_BUSQ> oLista = new List<APP_ENTIDADES.TBL_VARIABLES_BUSQ>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.Listar_CAT_AREA_FUNCIONAL_AFECTABLE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xFiltro", SqlDbType.NVarChar, 1000).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES_BUSQ
                                              {
                                                  value = long.Parse(xREG["xID"].ToString()),
                                                  label = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void Insertar_Actualizar_CAT_CENTROS_COSTOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.INS_ACT_CAT_AREA_FUNCIONAL";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_CAT_CENTRO_COSTOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.BAJA_CAT_CENTRO_COSTO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_CAT_CENTRO_COSTOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.REACTIVAR_CAT_CENTRO_COSTO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }


            // Tabla: CARGOS OCUPACIONALES
            public List<APP_ENTIDADES.TBL_CARGOS> Listar_CAT_CARGOS_OCUPACIONAL(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_CARGOS> oLista = new List<APP_ENTIDADES.TBL_CARGOS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_CAT_CARGO_OCUPACIONAL";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_CARGOS
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES_BUSQ> Listar_CAT_CARGOS_OCUPACIONAL_BUSQ(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_VARIABLES_BUSQ> oLista = new List<APP_ENTIDADES.TBL_VARIABLES_BUSQ>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.Listar_CAT_CARGO_OCUPACIONAL_AFECTABLE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xFiltro", SqlDbType.NVarChar, 1000).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES_BUSQ
                                              {
                                                  value = long.Parse(xREG["xID"].ToString()),
                                                  label = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void Insertar_Actualizar_CAT_CARGOS_OCUPACIONAL(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.INS_ACT_CAT_CARGO_OCUPACIONAL";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_CAT_CARGOS_OCUPACIONAL(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.BAJA_CAT_CARGO_OCUPACIONAL";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_CAT_CARGOS_OCUPACIONAL(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.REACTIVAR_CAT_CARGO_OCUPACIONAL";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }


            // Tabla: PROVEEDORES
            public List<APP_ENTIDADES.TBL_PROVEEDORES> Listar_REG_PROVEEDORES(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_PROVEEDORES> oLista = new List<APP_ENTIDADES.TBL_PROVEEDORES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_REG_PROVEEDOR";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_PROVEEDORES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  IDENTIFICACION = xREG["xIDENTIFICACION"].ToString(),
                                                  NOMBRE_COMPLETO = xREG["xNOMBRES"].ToString(),
                                                  NOM_01 = xREG["xNOM_01"].ToString(),
                                                  NOM_02 = xREG["xNOM_02"].ToString(),
                                                  APE_01 = xREG["xAPE_01"].ToString(),
                                                  APE_02 = xREG["xAPE_02"].ToString(),
                                                  RAZON_SOCIAL = xREG["xRAZON_SOCIAL"].ToString(),
                                                  DIR = xREG["xDIR"].ToString(),
                                                  INGRESO = xREG["xINGRESO"].ToString(),
                                                  TEL = xREG["xTEL"].ToString(),
                                                  CEL_T = xREG["xCEL_T"].ToString(),
                                                  CEL_C = xREG["xCEL_C"].ToString(),
                                                  EMAIL = xREG["xEMAIL"].ToString(),
                                                  ID_SEXO = xREG["xID_SEXO"].ToString(),
                                                  DESC_SEXO = xREG["xDESC_SEXO"].ToString(),
                                                  ID_TIPO = xREG["xID_TIPO"].ToString(),
                                                  DESC_TIPO = xREG["xDESC_TIPO"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES_BUSQ> Listar_REG_PROVEEDORES_BUSQ(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_VARIABLES_BUSQ> oLista = new List<APP_ENTIDADES.TBL_VARIABLES_BUSQ>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.Listar_REG_PROVEEDOR_AFECTABLE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xFiltro", SqlDbType.NVarChar, 1000).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES_BUSQ
                                              {
                                                  value = long.Parse(xREG["xID"].ToString()),
                                                  label = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }
        
            public void Insertar_Actualizar_REG_PROVEEDORES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.INS_ACT_REG_PROVEEDORES";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_REG_PROVEEDORES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.BAJA_REG_PROVEEDORES";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_REG_PROVEEDORES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.REACTIVAR_REG_PROVEEDOR";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }
        
            public List<APP_ENTIDADES.TBL_CONTACTOS_x_PROVEEDOR> Listar_REG_CONTACTOS_x_PROVEEDOR(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_CONTACTOS_x_PROVEEDOR> oLista = new List<APP_ENTIDADES.TBL_CONTACTOS_x_PROVEEDOR>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_REG_CONTACTOS_x_PROVEEDOR";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            
                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_CONTACTOS_x_PROVEEDOR
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CEDULA = xREG["xCEDULA"].ToString(),
                                                  NOMBRE_COMPLETO = xREG["xNOMBRE_COMPLETO"].ToString(),
                                                  ID_SEXO = xREG["xID_SEXO"].ToString(),
                                                  DESC_SEXO = xREG["xDESC_SEXO"].ToString(),
                                                  ID_TIPO = xREG["xID_TIPO"].ToString(),
                                                  DESC_TIPO = xREG["xDESC_TIPO"].ToString(),
                                                  PRIMER_NOMBRE = xREG["xNOM_01"].ToString(),
                                                  SEGUNDO_NOMBRE = xREG["xNOM_02"].ToString(),
                                                  PRIMER_APELLIDO = xREG["xAPE_01"].ToString(),
                                                  SEGUNDO_APELLIDO = xREG["xAPE_02"].ToString(),
                                                  DIRECCION = xREG["xDIR"].ToString(),
                                                  TEL = xREG["xTEL"].ToString(),
                                                  CEL_T = xREG["xCEL_T"].ToString(),
                                                  CEL_C = xREG["xCEL_C"].ToString(),
                                                  EMAIL = xREG["xEMAIL"].ToString(),
                                                  INGRESO = xREG["xINGRESO"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void Insertar_Actualizar_REG_CONTACTO_PROVEEDOR(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.INS_ACT_REG_CONTACTOS_x_PROVEEDOR";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Eliminar_REG_CONTACTO_PROVEEDOR(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.DEL_REG_CONTACTOS_x_PROVEEDOR";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public List<APP_ENTIDADES.TBL_REG_CONTACTOS_x_PROVEEDOR_RPT> rpt_Listado_Contactos_x_Proveedor(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_REG_CONTACTOS_x_PROVEEDOR_RPT> oLista = new List<APP_ENTIDADES.TBL_REG_CONTACTOS_x_PROVEEDOR_RPT>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.rpt_Listar_REG_CONTACTOS_x_PROVEEDOR";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xEST", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_REG_CONTACTOS_x_PROVEEDOR_RPT
                                              {
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  IDENTIFICACION = xREG["xIDENTIFICACION"].ToString(),
                                                  NOMBRE_COMPLETO = xREG["xNOMBRE_COMPLETO"].ToString(),
                                                  INGRESO = xREG["xINGRESO"].ToString(),
                                                  CODIGO_CONTACTO = xREG["xCOD_CONTACTO"].ToString(),
                                                  NOMBRE_COMPLETO_CONTACTO = xREG["xNOMBRE_COMPLETO_CONTACTO"].ToString(),
                                                  IDENTIFICACION_CONTACTO = xREG["xIDENTIFICACION_CONTACTO"].ToString(),
                                                  TELEFONOS = xREG["xTEL"].ToString(),
                                                  INGRESO_CONTACTO = xREG["xINGRESO_CONTACTO"].ToString(),
                                                  TIPO_CONTACTO = xREG["xDESC_TIPO"].ToString(),
                                                  ESTADO = xREG["xESTADO"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString(),
                                                  EDIT_CONTACTO = xREG["xEDIT_CONTACTO"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }



            // Tabla: EMPLEADOS
            public List<APP_ENTIDADES.TBL_EMPLEADOS> Listar_REG_EMPLEADOS(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_EMPLEADOS> oLista = new List<APP_ENTIDADES.TBL_EMPLEADOS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_REG_EMPLEADO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_EMPLEADOS
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  CED = xREG["xCEDULA"].ToString(),
                                                  INSS = xREG["xNO_INSS"].ToString(),
                                                  NOMBRE = xREG["xNOMBRE"].ToString(),
                                                  NOM_01 = xREG["xNOM_01"].ToString(),
                                                  NOM_02 = xREG["xNOM_02"].ToString(),
                                                  APE_01 = xREG["xAPE_01"].ToString(),
                                                  APE_02 = xREG["xAPE_02"].ToString(),
                                                  DIR = xREG["xDIR"].ToString(),
                                                  INGRESO = xREG["xINGRESO"].ToString(),
                                                  TEL = xREG["xTEL"].ToString(),
                                                  CEL_T = xREG["xCEL_T"].ToString(),
                                                  CEL_C = xREG["xCEL_C"].ToString(),
                                                  EMAIL = xREG["xEMAIL"].ToString(),
                                                  ID_SEXO = xREG["xID_SEXO"].ToString(),
                                                  DESC_SEXO = xREG["xDESC_SEXO"].ToString(),
                                                  ID_CARGO = xREG["xID_CARGO"].ToString(),
                                                  DESC_CARGO = xREG["xDESC_CARGO"].ToString(),
                                                  ID_AREA = xREG["xID_AREA"].ToString(),
                                                  DESC_AREA = xREG["xDESC_AREA"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  DESC_ESTADO = xREG["xDESC_EST"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_EMPLEADOS> Listar_REG_EMPLEADOS_BUSQ(out string xMsg)
            {
                List<APP_ENTIDADES.TBL_EMPLEADOS> oLista = new List<APP_ENTIDADES.TBL_EMPLEADOS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.Listar_REG_EMPLEADO_AFECTABLE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            
                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_EMPLEADOS
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCODIGO"].ToString(),
                                                  CED = xREG["xCEDULA"].ToString(),
                                                  NOMBRE = xREG["xNOMBRES"].ToString(),
                                                  DESC_CARGO = xREG["xCARGO"].ToString(),
                                                  DESC_AREA = xREG["xCENTRO_COSTO"].ToString(),
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void Insertar_Actualizar_REG_EMPLEADOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.INS_ACT_REG_EMPLEADO";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Baja_REG_EMPLEADOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.BAJA_REG_EMPLEADOS";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_REG_EMPLEADOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.REACTIVAR_REG_EMPLEADOS";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }



            // Tabla: ARTICULOS
            public List<APP_ENTIDADES.TBL_REG_ARTICULOS> Listar_REG_ARTICULOS(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_REG_ARTICULOS> oLista = new List<APP_ENTIDADES.TBL_REG_ARTICULOS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_REG_ARTICULOS";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xEST", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_REG_ARTICULOS
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  COD = xREG["xCOD"].ToString(),
                                                  CODIGO = xREG["xCODIGO"].ToString(),
                                                  SERIE = xREG["xSERIE"].ToString(),
                                                  DESCRIPCION = xREG["xDESCRIPCION"].ToString(),
                                                  OBSERVACIONES = xREG["xOBS"].ToString(),
                                                  ID_CLASE = xREG["xID_CLASE"].ToString(),
                                                  DESC_CLASE = xREG["xDESC_CLASE"].ToString(),
                                                  ID_MODELO = xREG["xID_MODELO"].ToString(),
                                                  DESC_MODELO = xREG["xDESC_MODELO"].ToString(),
                                                  ID_MARCA = xREG["xID_MARCA"].ToString(),
                                                  DESC_MARCA = xREG["xDESC_MARCA"].ToString(),
                                                  ID_COLOR = xREG["xID_COLOR"].ToString(),
                                                  DESC_COLOR = xREG["xDESC_COLOR"].ToString(),
                                                  ID_PROCEDENCIA = xREG["xID_PROCEDENCIA"].ToString(),
                                                  DESC_PROCEDENCIA = xREG["xDESC_PROCEDENCIA"].ToString(),
                                                  COSTO = xREG["xCOSTO"].ToString(),
                                                  FECHA_COMPRA = xREG["xFECHA_COMPRA"].ToString(),
                                                  INGRESO = xREG["xINGRESO"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  ID_ESTADO = xREG["xID_EST"].ToString(),
                                                  DESC_ESTADO = xREG["xEST"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_REG_ARTICULOS> Listar_REG_ARTICULOS_AFECTABLE(out string xMsg)
            {
                List<APP_ENTIDADES.TBL_REG_ARTICULOS> oLista = new List<APP_ENTIDADES.TBL_REG_ARTICULOS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_REG_ARTICULOS_AFECTABLE";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            
                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_REG_ARTICULOS
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xSIBE"].ToString(),
                                                  SERIE = xREG["xSERIE"].ToString(),
                                                  DESCRIPCION = xREG["xDESCRIPCION"].ToString(),
                                                  DESC_MODELO = xREG["xMODELO"].ToString(),
                                                  DESC_MARCA = xREG["xMARCA"].ToString(),
                                                  DESC_COLOR = xREG["xCOLOR"].ToString(),
                                                  DESC_PROCEDENCIA = xREG["xPROCEDENCIA"].ToString(),
                                                  COSTO = xREG["xCOSTO"].ToString(),
                                                  SELECCION = false
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public void Insertar_Actualizar_REG_ARTICULOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.INS_ACT_REG_ARTICULOS";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }
                    
            public void Baja_REG_ARTICULOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.BAJA_REG_ARTICULOS";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_REG_ARTICULOS(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.REACTIVAR_REG_ARTICULOS";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public List<APP_ENTIDADES.TBL_REG_CATALOGO_ARTICULOS> rpt_Listar_REG_CATALOGO_PRODUCTOS(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_REG_CATALOGO_ARTICULOS> oLista = new List<APP_ENTIDADES.TBL_REG_CATALOGO_ARTICULOS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.rpt_Listar_REG_CATALOGO_ARTICULOS";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xEST", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_REG_CATALOGO_ARTICULOS
                                              {
                                                  CODIGO = xREG["xCOD"].ToString(),
                                                  DESCRIPCION = xREG["xDESCRIPCION"].ToString(),
                                                  CLASE = xREG["xCLASE"].ToString(),
                                                  MODELO = xREG["xMODELO"].ToString(),
                                                  MARCA = xREG["xMARCA"].ToString(),
                                                  COLOR = xREG["xCOLOR"].ToString(),
                                                  INGRESO = xREG["xINGRESO"].ToString(),
                                                  ESTADO = xREG["xESTADO"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }



            // Tabla: ASIGNACIONES

            public List<APP_ENTIDADES.TBL_REG_ASIGNACIONES_ENC> Listar_REG_ASIGNACIONES_ENC(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_REG_ASIGNACIONES_ENC> oLista = new List<APP_ENTIDADES.TBL_REG_ASIGNACIONES_ENC>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_REG_ASIGNACIONES_ENC";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];
                            
                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_REG_ASIGNACIONES_ENC
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCODIGO"].ToString(),
                                                  FECHA = xREG["xFECHA"].ToString(),
                                                  ID_TIPO_MOVIMIENTO = xREG["xID_TIPO_MOVIMIENTO"].ToString(),
                                                  DESC_TIPO_MOVIMIENTO = xREG["xDESC_TIPO_MOVIMIENTO"].ToString(),
                                                  ID_EMPLEADO = xREG["xID_EMPLEADO"].ToString(),
                                                  EMPLEADO = xREG["xEMPLEADO"].ToString(),
                                                  CONCEPTO = xREG["xCONCEPTO"].ToString(),
                                                  CANTIDAD = xREG["xCANTIDAD"].ToString(),
                                                  COSTO = xREG["xCOSTO"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  DESC_ESTADO = xREG["xDESC_EST"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_REG_ASIGNACIONES_DET> Listar_REG_ASIGNACIONES_DET(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_REG_ASIGNACIONES_DET> oLista = new List<APP_ENTIDADES.TBL_REG_ASIGNACIONES_DET>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_REG_ASIGNACIONES_DET";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_REG_ASIGNACIONES_DET
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  ID_ARTICULO = xREG["xID_ARTICULO"].ToString(),
                                                  COD_ARTICULO = xREG["xCODIGO"].ToString(),
                                                  SERIE_ARTICULO = xREG["xSERIE"].ToString(),
                                                  DESC_ARTICULO = xREG["xDESC_ARTICULO"].ToString(),
                                                  PROCEDENCIA_ARTICULO = xREG["xPROCEDENCIA"].ToString(),
                                                  CLASE_ARTICULO = xREG["xCLASE"].ToString(),
                                                  MODELO_ARTICULO = xREG["xMODELO"].ToString(),
                                                  MARCA_ARTICULO = xREG["xMARCA"].ToString(),
                                                  COLOR_ARTICULO = xREG["xCOLOR"].ToString(),
                                                  COSTO = xREG["xCOSTO"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }
        
            public void Insertar_Actualizar_REG_ASIGNACIONES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.INS_ACT_REG_ASIGNACIONES";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xENC", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xDET", SqlDbType.Xml).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }
        
            public void Baja_REG_ASIGNACIONES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.BAJA_REG_ASIGNACIONES";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xOBS", SqlDbType.NVarChar, 1000).Value = Args[2];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[3];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[4];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public void Reactivar_REG_ASIGNACIONES(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Activos_Fijos.REACTIVAR_REG_ASIGNACIONES";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[2];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

            public List<APP_ENTIDADES.TBL_REG_ASIGNACIONES_ENC> rpt_Listar_REG_ASIGNACIONES_RANGO_FECHA(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_REG_ASIGNACIONES_ENC> oLista = new List<APP_ENTIDADES.TBL_REG_ASIGNACIONES_ENC>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_REG_ASIGNACIONES_RANGO_FECHA";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xBAJA", SqlDbType.Int).Value = Args[0];
                            COMANDO.Parameters.Add("@xDESDE", SqlDbType.Date).Value = Args[1];
                            COMANDO.Parameters.Add("@xHASTA", SqlDbType.Date).Value = Args[2];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_REG_ASIGNACIONES_ENC
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCODIGO"].ToString(),
                                                  FECHA = xREG["xFECHA"].ToString(),
                                                  ID_TIPO_MOVIMIENTO = xREG["xID_TIPO_MOVIMIENTO"].ToString(),
                                                  DESC_TIPO_MOVIMIENTO = xREG["xDESC_TIPO_MOVIMIENTO"].ToString(),
                                                  ID_EMPLEADO = xREG["xID_EMPLEADO"].ToString(),
                                                  EMPLEADO = xREG["xEMPLEADO"].ToString(),
                                                  CONCEPTO = xREG["xCONCEPTO"].ToString(),
                                                  CANTIDAD = xREG["xCANTIDAD"].ToString(),
                                                  COSTO = xREG["xCOSTO"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  ID_ESTADO = xREG["xEST"].ToString(),
                                                  DESC_ESTADO = xREG["xDESC_EST"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_REG_HOJA_ASIGNACIONES> rpt_Listar_REG_HOJA_ASIGNACIONES(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_REG_HOJA_ASIGNACIONES> oLista = new List<APP_ENTIDADES.TBL_REG_HOJA_ASIGNACIONES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_REG_HOJA_ASIGNACIONES";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Decimal).Value = Args[0];
                            
                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_REG_HOJA_ASIGNACIONES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  CODIGO = xREG["xCODIGO"].ToString(),
                                                  FECHA = xREG["xFECHA"].ToString(),
                                                  DESC_TIPO_MOVIMIENTO = xREG["xDESC_TIPO_MOVIMIENTO"].ToString(),
                                                  EMPLEADO = xREG["xEMPLEADO"].ToString(),
                                                  CEDULA = xREG["xCEDULA"].ToString(),
                                                  CARGO = xREG["xCARGO"].ToString(),
                                                  AREA = xREG["xAREA"].ToString(),
                                                  CONCEPTO = xREG["xCONCEPTO"].ToString(),
                                                  CANTIDAD = xREG["xCANTIDAD"].ToString(),
                                                  BAJA = xREG["xBAJA"].ToString(),
                                                  DESC_BAJA = xREG["xDESC_BAJA"].ToString(),
                                                  DESC_ESTADO = xREG["xDESC_EST"].ToString(),
                                                  COD_ARTICULO = xREG["xCODIGO_SIBE"].ToString(),
                                                  SERIE_ARTICULO = xREG["xSERIE"].ToString(),
                                                  DESC_ARTICULO = xREG["xDESC_ARTICULO"].ToString(),
                                                  PROCEDENCIA_ARTICULO = xREG["xPROCEDENCIA"].ToString(),
                                                  CLASE_ARTICULO = xREG["xCLASE"].ToString(),
                                                  MODELO_ARTICULO = xREG["xMODELO"].ToString(),
                                                  MARCA_ARTICULO = xREG["xMARCA"].ToString(),
                                                  COLOR_ARTICULO = xREG["xCOLOR"].ToString(),
                                                  COSTO = xREG["xCOSTO"].ToString(),
                                                  USER = xREG["xUSER"].ToString(),
                                                  EDIT = xREG["xEDIT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }


            // Reportes
            public List<APP_ENTIDADES.TBL_VARIABLES> Lista_Reportes_01(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_Reportes_01";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES> Lista_Reportes_02(out string xMsg)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_Reportes_02";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            
                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES> Lista_Reportes_03(out string xMsg)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xCONEXION))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Activos_Fijos.Listar_Reportes_03";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

        #endregion


        // Para los Modulos Externos...
        #region Funciones_Externas

            // Autenticacion de Usuarios
            public List<APP_ENTIDADES.TBL_AUTENTICACION> Autenticar_Usuario(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_AUTENTICACION> oLista = new List<APP_ENTIDADES.TBL_AUTENTICACION>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xSEGURIDAD))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Seguridad.AUTENTICAR_USUARIO";
                        
                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xUID", SqlDbType.NVarChar, 200).Value = Args[0];
                            COMANDO.Parameters.Add("@xPWD", SqlDbType.NVarChar, 200).Value = Args[1];
                            
                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;


                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_AUTENTICACION
                                              {
                                                  ID = xREG["xID"].ToString(),
                                                  UID = xREG["xUID"].ToString(),
                                                  NOMBRE = xREG["xNOMBRE"].ToString(),
                                                  TIPO = xREG["xDESC_ROL"].ToString(),
                                                  ID_TIPO = xREG["xID_ROL"].ToString(),
                                                  GRAL_EMPRESA = xREG["xGRAL_EMPRESA"].ToString(),
                                                  ESP_EMPRESA = xREG["xDIR_EMPRESA"].ToString(),
                                                  DPTO_EMPRESA = xREG["xDPTO_EMPRESA"].ToString(),
                                                  SESION = xREG["xSESION"].ToString()
                                              }).ToList();
                                }
                            }
                            xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }
                    
            // Cerrar Sesiones
            public void CERRAR_SESION(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xSEGURIDAD))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.Cerrar_Sesion";
                        
                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[0];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }


            // Actualizar Password Usuario
            public void Actualizar_PASSWORD_USER(out string xMsg, params object[] Args)
            {
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xSEGURIDAD))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.Actualizar_PASSWORD_USER";
                        

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@yDatos", SqlDbType.Xml).Value = Args[0];
                            COMANDO.Parameters.Add("@xSESION", SqlDbType.Decimal).Value = Args[1];

                            COMANDO.Parameters.Add("@xMSG", SqlDbType.NVarChar, 1000);
                            COMANDO.Parameters["@xMSG"].Direction = ParameterDirection.Output;

                            COMANDO.ExecuteNonQuery(); xMsg = COMANDO.Parameters["@xMSG"].Value.ToString();
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
            }

        
            // Listado de Accesos
            public List<APP_ENTIDADES.TBL_ACCESOS_01> Accesos_Opciones(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_ACCESOS_01> oLista = new List<APP_ENTIDADES.TBL_ACCESOS_01>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xSEGURIDAD))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Seguridad.ACCESO_OPCIONES";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID_USER", SqlDbType.Int).Value = Args[0];
                            COMANDO.Parameters.Add("@xROL", SqlDbType.Int).Value = Args[1];
                            COMANDO.Parameters.Add("@xOPCION", SqlDbType.NVarChar, 200).Value = Args[2];
                            
                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_ACCESOS_01
                                              {
                                                  EJEC = xREG["xEJEC"].ToString(),
                                                  VIS = xREG["xVIS"].ToString(),
                                                  IMP = xREG["xIMP"].ToString(),
                                                  DEL = xREG["xBOR"].ToString(),
                                                  INS = xREG["xINS"].ToString(),
                                                  ACT = xREG["xACT"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

            public List<APP_ENTIDADES.TBL_VARIABLES> Listado_Acceso_Opciones(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xSEGURIDAD))
                    {
                        CONEXION.Open();

                        // Procedimiento Almacenado
                        string strSQL = "Seguridad.Listado_Opciones_Accesos";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xUSER", SqlDbType.Int).Value = Args[0];
                            COMANDO.Parameters.Add("@xROL", SqlDbType.Int).Value = Args[1];
                            
                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xOPC"].ToString(),
                                                  DESCRIPCION = xREG["xDESC"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }


            // LOGOS ACTUALES
            public List<APP_ENTIDADES.TBL_VARIABLES> Listar_LOGOS(out string xMsg)
            {
                List<APP_ENTIDADES.TBL_VARIABLES> oLista = new List<APP_ENTIDADES.TBL_VARIABLES>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xSEGURIDAD))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.Listar_FOTOS";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();


                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_VARIABLES
                                              {
                                                  ID = xREG["xLOGO_01"].ToString(),
                                                  DESCRIPCION = xREG["xLOGO_02"].ToString()
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }


            // FIRMAS ACTUALES
            public List<APP_ENTIDADES.TBL_FIRMAS_DOCUMENTOS> Listar_Firmas_Documentos(out string xMsg, params object[] Args)
            {
                List<APP_ENTIDADES.TBL_FIRMAS_DOCUMENTOS> oLista = new List<APP_ENTIDADES.TBL_FIRMAS_DOCUMENTOS>();
                try
                {
                    xMsg = string.Empty;
                    using (SqlConnection CONEXION = new SqlConnection(xSEGURIDAD))
                    {
                        CONEXION.Open();

                        // Scripts de Bases de Datos T-SQL  (Alternativa en ves de los Procedimientos Almacenados
                        string strSQL = "Seguridad.Listar_FIRMAS_DOCUMENTOS";

                        using (SqlCommand COMANDO = new SqlCommand(strSQL, CONEXION))
                        {
                            COMANDO.CommandType = CommandType.StoredProcedure; COMANDO.CommandTimeout = 3600;

                            COMANDO.Parameters.Clear();
                            COMANDO.Parameters.Add("@xID", SqlDbType.Int).Value = Args[0];

                            using (SqlDataReader REGISTROS = COMANDO.ExecuteReader(CommandBehavior.CloseConnection))
                            {
                                if (REGISTROS.HasRows == true)
                                {
                                    xFuentes_Datos = new DataTable(); xFuentes_Datos.Load(REGISTROS);
                                    oLista = (from xREG in xFuentes_Datos.AsEnumerable()
                                              select new APP_ENTIDADES.TBL_FIRMAS_DOCUMENTOS
                                              {
                                                  NOMBRE_01 = xREG["xNOMBRE"].ToString(),
                                                  CARGO_01 = xREG["xCARGO"].ToString(),
                                                  NOMBRE_02 = xREG["xAREA"].ToString(),
                                                  CARGO_02 = string.Empty,
                                                  NOMBRE_03 = string.Empty,
                                                  CARGO_03 = string.Empty,
                                                  NOMBRE_04 = string.Empty,
                                                  CARGO_04 = string.Empty,
                                                  NOMBRE_05 = string.Empty,
                                                  CARGO_05 = string.Empty
                                              }).ToList();
                                }
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    xMsg = cError + ex.Message.ToString();
                }
                return oLista;
            }

        #endregion


    }
}
