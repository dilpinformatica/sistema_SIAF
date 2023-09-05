    <%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">
    
    void Application_Start(object sender, EventArgs e) 
    {
        // Código que se ejecuta al iniciarse la aplicación 
        RegisterRoutes(RouteTable.Routes);
    }

    static void RegisterRoutes(RouteCollection routes)
    {
        // Ventanas Independientes
        routes.MapPageRoute("Acceso-Sistema", "Dologin", "~/Frm_Dologin.aspx");
        routes.MapPageRoute("Menu-Principal", "Fondo", "~/Frm_Fondo.aspx");
        routes.MapPageRoute("Salida-Sistema", "LogOut", "~/Frm_LogOut.aspx");
        
        // Ventanas del Menu Principal
        // Catalogos
        routes.MapPageRoute("Catalogos_01", "Reg-Cat_Colores", "~/Z_CAT_COLORES.aspx");
        routes.MapPageRoute("Catalogos_02", "Reg-Cat_Marcas", "~/Z_CAT_MARCAS.aspx");
        routes.MapPageRoute("Catalogos_03", "Reg-Cat_Modelos", "~/Z_CAT_MODELOS.aspx");
        routes.MapPageRoute("Catalogos_04", "Reg-Cat_Clases", "~/Z_CAT_CLASES.aspx");
        routes.MapPageRoute("Catalogos_05", "Reg-Cat_Procedencias", "~/Z_CAT_TIPO_PROCEDENCIAS.aspx");
        routes.MapPageRoute("Catalogos_06", "Reg-Cat_Tipos_Altas", "~/Z_CAT_TIPO_ALTAS.aspx");
        routes.MapPageRoute("Catalogos_07", "Reg-Cat_Tipos_Movimientos", "~/Z_CAT_TIPO_MOVIMIENTOS.aspx");
        routes.MapPageRoute("Catalogos_08", "Reg-Cat_Tipos_Proveedores", "~/Z_CAT_TIPO_PROVEEDOR.aspx");
        routes.MapPageRoute("Catalogos_09", "Reg-Cat_Tipos_Contactos", "~/Z_CAT_TIPO_CONTACTOS_PROVEEDOR.aspx");
        routes.MapPageRoute("Catalogos_10", "Reg-Cat_Tipos_Sexos", "~/Z_CAT_TIPO_SEXOS.aspx");
        routes.MapPageRoute("Catalogos_11", "Reg-Cat_Centro_Costos", "~/Z_CAT_CENTROS_COSTOS.aspx");
        routes.MapPageRoute("Catalogos_12", "Reg-Cat_Cargos_Ocupacionales", "~/Z_CAT_CARGOS_OCUPACIONALES.aspx");
        
        // Registrar
        routes.MapPageRoute("Registrar_01", "Reg-Mov_Articulos", "~/Z_REG_ARTICULOS.aspx");
        routes.MapPageRoute("Registrar_02", "Reg-Mov_Empleados", "~/Z_REG_EMPLEADOS.aspx");
        routes.MapPageRoute("Registrar_03", "Reg-Mov_Proveedores", "~/Z_REG_PROVEEDORES.aspx");
        routes.MapPageRoute("Registrar_04", "Reg-Mov_Asignacion_Activos_Fijos", "~/Z_REG_ASIGNACIONES.aspx");
        routes.MapPageRoute("Registrar_05", "Reg-Mov_Entradas_Activos_Fijos", "~/Z_REG_ENTRADAS.aspx");
        
        // Reportes
        routes.MapPageRoute("Reportes_01", "Reg-Reportes", "~/Z_REPORTES.aspx");
        routes.MapPageRoute("Reporte_02", "Reg-Actualizar_Clave", "~/Z_ACTUALIZAR_CLAVE.aspx");         
        
        // Administracion
        routes.MapPageRoute("Admin_01", "Reg-Sys_Roles", "~/SYS_REG_ROLES.aspx");
        routes.MapPageRoute("Admin_02", "Reg-Sys_Usuarios", "~/SYS_REG_USUARIOS.aspx");
        routes.MapPageRoute("Admin_03", "Reg-Sys_Opciones_Modulo", "~/SYS_REG_OPCIONES.aspx");
        routes.MapPageRoute("Admin_04", "Reg-Sys_Accesos", "~/SYS_REG_ACCESOS.aspx");
        routes.MapPageRoute("Admin_05", "Reg-Sys_Sesiones_Bitacoras", "~/SYS_REG_BITACORAS.aspx");

    } 
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Código que se ejecuta cuando se cierra la aplicación

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Código que se ejecuta al producirse un error no controlado

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Código que se ejecuta cuando se inicia una nueva sesión
        Session["UsrData"] = string.Empty; Session["Data_Prueba"] = string.Empty;
        
        // Tiempo de la sesión 60 minutos = una hora = 10 * 60 = 600 minutos (8 horas)
        Session.Timeout = 86400;

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Código que se ejecuta cuando finaliza una sesión. 
        // Nota: el evento Session_End se desencadena sólo cuando el modo sessionstate
        // se establece como InProc en el archivo Web.config. Si el modo de sesión se establece como StateServer 
        // o SQLServer, el evento no se genera.
        Session["UsrData"] = string.Empty; Session["Data_Prueba"] = string.Empty;
       
        //All the Session
        Session.Clear();
        Session.Contents.RemoveAll();
        Session.Abandon();

    }
       
</script>
