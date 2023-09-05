<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Frm_LogOut.aspx.cs" Inherits="Frm_LogOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    
    <meta charset="utf-8" />
    <meta name="description" content="Aplicación WEB para el CONTROL DE LOS INVENTARIOS DE ACTIVOS FIJOS A EMPLEADOS" />
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no" />
       
    <title>INVENTARIO_ACTIVOS_FIJOS: Fin de Sesión</title>
    <link id="aTitulo" href='' rel='shortcut icon' type='image/png' />

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet" media="screen" />
    
    <link href="css/font-awesome-4.5.0/css/font-awesome.css" rel="stylesheet" type="text/css" />
    
    <link href="css/xEstilo_General_01.css" rel="stylesheet" type="text/css" />
    <link href="css/redmond/jquery-ui-1.8.16.custom.css" rel="stylesheet" />
    <link href="Styles/redmond/jquery-ui-1.10.4.custom.css" rel="stylesheet" type="text/css"  />
        
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="Otra_Fuentes/scripts/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="Otra_Fuentes/scripts/jquery-1.11.2.js" type="text/javascript"></script>
    <script src="Scripts/json2.js" type="text/javascript"></script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-ui-1.10.4.min.js" type="text/javascript"></script>

    <script type="text/javascript" src="js/Sys_Salida_Sistema.js?v=<% Response.Write(string.Concat(string.Format("{0:dd/MM/yyyy}", DateTime.Now), " ", string.Format("{0:hh:mm:ss}", DateTime.Now))); %>"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
        <script src="Scripts/html5shiv.js"></script>
        <script src="Scripts/respond.min.js"></script>
        <script src="Scripts/html5.js" ></script>
    <![endif]-->

</head>
<body onload="Javascript:history.go(1);" onunload="Javascript:history.go(1);" >
    <form id="form1" runat="server">
    <div>
        <input type="hidden" id="HOST_APP_PORTAL" name="HOST_APP_PORTAL" value="" runat="server"/>
        <table width="100%">
            <tr>
                <td align="center">
                    <a href="#"><img src="images/imagenLlave.gif" border="0" alt="logo"/></a>
                    <br />
                    <p style="color:Navy; font-size:1.2em;">!Ha Salido del Sistema!.</p>
                    <br />
                    <a id="Cmd_Regresar" href="#">Entrar al Sistema!!!</a>
                </td>
            </tr>
        </table>   
    </div>
    </form>
</body>
</html>
