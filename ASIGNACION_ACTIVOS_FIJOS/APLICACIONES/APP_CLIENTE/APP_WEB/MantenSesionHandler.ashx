﻿<%@ WebHandler Language="C#" Class="MantenSesionHandler" %>

using System;
using System.Web;
using System.Web.SessionState;

public class MantenSesionHandler : IHttpHandler, IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        //context.Response.Write("Hello World");
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}