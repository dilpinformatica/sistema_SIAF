using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Web.Security;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    private static string wREF_RPT = ConfigurationManager.AppSettings["xREF_RPT"];
    private static string xHOST_APP = ConfigurationManager.AppSettings["xHOST_APP"];

    protected void Page_Init(object sender, EventArgs e)
    {
        if (!Request.IsAuthenticated) { Response.Redirect("Dologin"); }
        if (Convert.IsDBNull(Session["UsrData"]) == true) { FormsAuthentication.SignOut(); Response.Redirect("Dologin"); }
        if (Context.Session != null)
        {
            if (Session.IsNewSession)
            {
                string hayCookie = string.Empty;
                hayCookie = Request.Headers["Cookie"];
                if (hayCookie != null && hayCookie.IndexOf("ASP.NET_SessionId") >= 0)
                { FormsAuthentication.SignOut(); Response.Redirect("Dologin"); }
            }
        }

        if (Session.SessionID == null)
        { FormsAuthentication.SignOut(); Response.Redirect("Dologin"); }
        if (Session["UsrData"] == null)
        { FormsAuthentication.SignOut(); Response.Redirect("Dologin"); }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        try {
            // objetos ocultos
            this.ID_USER.Value = (Session["UsrData"] as List<APP_ENTIDADES.TBL_AUTENTICACION>)[0].ID;
            this.LOG_USER.Value = (Session["UsrData"] as List<APP_ENTIDADES.TBL_AUTENTICACION>)[0].UID;
            this.ROL_USER.Value = (Session["UsrData"] as List<APP_ENTIDADES.TBL_AUTENTICACION>)[0].TIPO;
            this.ID_ROL_USER.Value = (Session["UsrData"] as List<APP_ENTIDADES.TBL_AUTENTICACION>)[0].ID_TIPO;
            this.SESION_USER.Value = (Session["UsrData"] as List<APP_ENTIDADES.TBL_AUTENTICACION>)[0].SESION;

            this.GRAL_EMPRESA_USER.Value = (Session["UsrData"] as List<APP_ENTIDADES.TBL_AUTENTICACION>)[0].GRAL_EMPRESA;
            this.ESP_EMPRESA_USER.Value = (Session["UsrData"] as List<APP_ENTIDADES.TBL_AUTENTICACION>)[0].ESP_EMPRESA;
            this.DPTO_EMPRESA_USER.Value = (Session["UsrData"] as List<APP_ENTIDADES.TBL_AUTENTICACION>)[0].DPTO_EMPRESA;
            
            this.yREF_RPT.Value = Request.Url.GetLeftPart(UriPartial.Authority) + wREF_RPT;
            this.HOST_APP.Value = Request.Url.GetLeftPart(UriPartial.Authority) + xHOST_APP;

            // Lo que se ve en el encabezado
            this.NomUser.InnerText = string.Concat("Usuario: ", (Session["UsrData"] as List<APP_ENTIDADES.TBL_AUTENTICACION>)[0].NOMBRE);
            this.RolUser.InnerText = string.Concat("Rol: ", (Session["UsrData"] as List<APP_ENTIDADES.TBL_AUTENTICACION>)[0].TIPO);
        }
        catch (Exception ex) {
            this.xLeyenda.Value = ex.Message; 
        }
        
    }
}
