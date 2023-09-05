using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Z_CAT_CARGOS_OCUPACIONALES : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        if (!Request.IsAuthenticated) { Response.Redirect("LogOut"); }
        if (Convert.IsDBNull(Session["UsrData"]) == true) { Response.Redirect("LogOut"); }
        if (Context.Session != null)
        {
            if (Session.IsNewSession)
            {
                string hayCookie;
                hayCookie = Request.Headers["Cookie"];
                if (hayCookie != null && hayCookie.IndexOf("ASP.NET_SessionId") >= 0)
                { Response.Redirect("LogOut"); }
            }
        }

        if (Session.SessionID == null) { Response.Redirect("LogOut"); }

        if (Session["UsrData"] == null) { Response.Redirect("LogOut"); }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}