using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Frm_Fondo : System.Web.UI.Page
{
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
        
    }
}