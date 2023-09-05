using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using Newtonsoft.Json;
using APP_CAPA_DATOS;
using APP_ENTIDADES;
using System.Configuration;

public partial class Frm_Dologin : System.Web.UI.Page, ICallbackEventHandler
{
    public string callbackStr = string.Empty;
    private string sMensaje_Error = string.Empty;

    private static List<APP_ENTIDADES.TBL_AUTENTICACION> xData = new List<APP_ENTIDADES.TBL_AUTENTICACION>();
    private static APP_CAPA_DATOS.Acceso_Datos xMETODOS = new APP_CAPA_DATOS.Acceso_Datos();

    protected void Page_Load(object sender, EventArgs e)
    {
        callbackStr = Page.ClientScript.GetCallbackEventReference(this, "Cmd", "IsUserAuth", "Context", "onError", false);
        if ((IsPostBack) && (!Page.IsCallback))
        {
            Session.Timeout = 86400; 
            Session["UsrData"] = xData; FormsAuthentication.SetAuthCookie((Session["UsrData"] as List<TBL_AUTENTICACION>)[0].ID, true);
            FormsAuthentication.RedirectFromLoginPage((Session["UsrData"] as List<TBL_AUTENTICACION>)[0].ID, true);
        }      
    }

    void ICallbackEventHandler.RaiseCallbackEvent(string eventArg)
    {       
        string[] AjaxParamCall = eventArg.Split(',');

        sMensaje_Error = string.Empty;
        try
        {
            xData = xMETODOS.Autenticar_Usuario(out sMensaje_Error, AjaxParamCall[0], AjaxParamCall[1]);
            if (sMensaje_Error.Length > 0)
            {
                sMensaje_Error = "0," + sMensaje_Error; Session["UsrData"] = string.Empty;
                Session.Clear(); Session.Contents.RemoveAll(); Session.Abandon();
            } 
            else if (xData == null) { sMensaje_Error = "0,PETICION DE INFORMACION NULA..."; }
            else if (xData.Count == 0) { sMensaje_Error = "0,PETICION DE INFORMACION NULA..."; }
            else 
            {
                Session.Timeout = 86400; sMensaje_Error = "1," + sMensaje_Error; Session["UsrData"] = xData;
            }
        }
        catch (Exception ex) { sMensaje_Error = "0," + ex.Message.ToString(); Session["UsrData"] = string.Empty; }        
    }

    string ICallbackEventHandler.GetCallbackResult()
    {
        if (!sMensaje_Error.StartsWith("0")) {
            if (Session["UsrData"].ToString() == string.Empty) {
                Session.Clear();
                Session.Contents.RemoveAll();
                Session.Abandon();

                if (Request.Cookies["ASP.NET_SessionId"] != null)
                {
                    Response.Cookies["ASP.NET_SessionId"].Value = string.Empty;
                    Response.Cookies["ASP.NET_SessionId"].Expires = DateTime.Now.AddMonths(-20);
                }

                FormsAuthentication.SignOut();
            }
        }
        return sMensaje_Error;
    }

    public void DoABC(object sender, EventArgs e)
    {
        // Solo para forzar un PostBack y traer los valores de las variables: UsrIsAuthenticated y Usr_Data
    }

}