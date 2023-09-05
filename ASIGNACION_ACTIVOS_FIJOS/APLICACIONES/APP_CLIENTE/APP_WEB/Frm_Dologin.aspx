<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Frm_Dologin.aspx.cs" Inherits="Frm_Dologin"  %>

<!DOCTYPE html>

<%@ OutputCache Duration="1" VaryByParam="none" Location="None" %> 

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    
    <meta charset="utf-8" />
    <meta name="description" content="Aplicación WEB para el CONTROL DE LOS INVENTARIO DE ACTIVOS FIJOS A EMPLEADOS" />
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no" />
    
    <title>INVENTARIO_ACTIVOS_FIJOS: Inicio de Sesión</title>
    <link id="aTitulo" href='' rel='shortcut icon' type='image/png' />

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet" media="screen" />
    
    <link href="css/font-awesome-4.5.0/css/font-awesome.css" rel="stylesheet" type="text/css" />
    
    <link href="css/xAutenticacion.css" rel="stylesheet" type="text/css" />
    <link href="css/redmond/jquery-ui-1.8.16.custom.css" rel="stylesheet" />
    <link href="Styles/redmond/jquery-ui-1.10.4.custom.css" rel="stylesheet" type="text/css"  />
    <link href="Otra_Fuentes_ui/jquery-ui.css" rel="stylesheet" type="text/css" />      
    <link href="css/alertify.min.css" rel="stylesheet" type="text/css" />
    <link href="css/sweetalert.min.css" rel="stylesheet" type="text/css" />
    <link href="css/themes/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="Otra_Fuentes/scripts/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="Otra_Fuentes/scripts/jquery-1.11.2.js" type="text/javascript"></script>
    <script src="Scripts/json2.js" type="text/javascript"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-ui-1.10.4.min.js" type="text/javascript"></script>
    <script src="Scripts/alertify.min.js" type="text/javascript"></script>
    <script src="Scripts/sweetalert.min.js" type="text/javascript"></script>

    <script type="text/javascript" src="js/Sys_Login.js"></script> 
    
    <script type="text/javascript">
        function LogTheUserIn(UserName, Password) {
            var Cmd = UserName + ',' + Password;
            var Context = new Object();
            Context.CommandName = "Autenticar";
            <%=callbackStr%>
        }

        function IsUserAuth(result, Context) {
            onLoginOK(result);
            var IndexOfComma = result.indexOf(",");
            if (result.substring(0, IndexOfComma) == '1') {
                var btn = document.getElementById("SecretBtn");
                btn.click();
            }
        }

        function onError(message, Context) {
            // Solo para cumplir con la Sintaxis de Page.ClientScript.GetCallbackEventReference
        }

	</script>


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="Scripts/html5shiv.js"></script>
        <script src="Scripts/respond.min.js"></script>
        <script src="Scripts/html5.js" ></script>
    <![endif]-->
</head>
<body onload="Javascript:history.go(1);" onunload="Javascript:history.go(1);">
    <div id="cont_01" class="container-fluid">
        <div class="row">
            <div class="col-md-12 col-lg-12 col-xs-12 col-sm-12">
                <div class="middlePage">
                    <div class="page-header" style="text-align:center;">
                        <h1 class="logo">Inventario de Activos Fijos</h1>
                    </div>
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <h3 class="panel-title">Control de Acceso...</h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-5 col-lg-5 col-xs-5 col-sm-5">
                                    <div class="container-fluid"><img src="images/Logo_Dologin.png" class="img-responsive center-block" style="margin-top:10%" id="xLogo_Entrada"  /></div>
                                </div>
                                <div class="col-md-7 col-lg-7 col-xs-7 col-sm-7" style="border-left:1px solid #ccc;height:auto;">                                  
                                    <form method="post" id="signin" class="form-horizontal" runat="server">
                                        <fieldset>
                                            <input id="txt_Login" type="text" placeholder="USERNAME" class="form-control input-md" runat="server"/>
                                            <input id="txt_clave" type="password" placeholder="PASSWORD" class="form-control input-md" runat="server"/>
                                            <input type="button" id="SecretBtn" style="display:none" runat="server" onserverclick="DoABC">
                                            <asp:Button ID="Cmd_Ok" runat="server" text="Ingresar" CssClass="btn btn-primary btn-lg" />
                                        </fieldset>
                                    </form>
                                    <span class="message" id="Ingreso"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>            
        </div>
    </div>  
</body>
</html>
