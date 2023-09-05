using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Configuration;

public partial class Frm_LogOut : System.Web.UI.Page
{
    private static string xHOST_APP_PORTAL = ConfigurationManager.AppSettings["xHOST_APP_PORTAL"];

    protected void Page_Init(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Contents.RemoveAll();
        Session.Abandon();

        //Response.Cookies.Add(new HttpCookie("ASP.NET_SessionId") { Expires = DateTime.Now.AddDays(-1d) });
        if (Request.Cookies["ASP.NET_SessionId"] != null)
        {
            Response.Cookies["ASP.NET_SessionId"].Value = string.Empty;
            Response.Cookies["ASP.NET_SessionId"].Expires = DateTime.Now.AddMonths(-20);
        }

        FormsAuthentication.SignOut();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        this.HOST_APP_PORTAL.Value = Request.Url.GetLeftPart(UriPartial.Authority) + xHOST_APP_PORTAL;
    }
}