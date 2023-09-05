<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Frm_REPORTES.aspx.cs" Inherits="_Default" %>
<%@ Register TagPrefix="CR" Namespace="CrystalDecisions.Web" Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    
    <meta charset="utf-8" />
    <meta name="description" content="Aplicación WEB de CONTROL DE LAS ASIGNACIONES DE ACTIVOS FIJOS A EMPLEADOS" />
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1 maximum-scale=1 minimum-scale=1" />

    <title>ASIGNACION_ACTIVOS_FIJOS: Imprimiendo...</title>
    <link rel="shortcut icon" href="images/Ma/print.png"/>
    
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen" />
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet" media="screen" />
    <link href="css/alertify.min.css" rel="stylesheet" type="text/css" />
    <link href="css/themes/bootstrap.min.css" rel="stylesheet" type="text/css" />

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="Scripts/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-1.11.1.js" type="text/javascript"></script>
    
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-ui-1.10.4.min.js" type="text/javascript"></script>
    <script src="Scripts/alertify.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        var xTitulo = '<div class="ui-widget"><div class="ui-state-highlight ui-corner-all" style="padding:0 .7em;"><p style="color: #cd0a0a;"><span class="ui-icon ui-icon-info" style="float:left;margin-right: .3em;" ></span><strong>Auditor del Sistema...</strong></p></div></div>';

        $(document).ready(function () {
            // Evitar ir atras...
            try {
                // Evitar ir atras...
                if (history.forward(1)) {
                    location.replace(history.forward(1));
                }

                //override defaults
                alertify.defaults.theme.ok = "btn btn-primary";
                alertify.defaults.theme.cancel = "btn btn-danger";
                alertify.defaults.theme.input = "form-control";

                var xError = $('#xLeyenda').val();
                if (xError.length > 0) {
                    alertify.alert(xTitulo, '<p style="color:navy;"><strong>' + xError + '</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
                }

            } catch (ex) {
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>' + ex.message + '</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
            }
        });

	</script>

</head>
<body onload="Javascript:history.go(1);" onunload="Javascript:history.go(1);">
    <form id="form1" runat="server">
        <div style="width:100%; height:100%;">
            
            <div style="width:1000px;">
                <input type="hidden" id="xLeyenda" value="" runat="server" />
                <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" width="100%"
                    AutoDataBind="true" BorderStyle="Solid" HasCrystalLogo="False" 
                    HasDrilldownTabs="False" HasDrillUpButton="False" HasGotoPageButton="True" 
                    HasRefreshButton="True" HasToggleGroupTreeButton="False"  
                    HasToggleParameterPanelButton="False" HasZoomFactorList="True" 
                    ToolPanelView="None" EnableDatabaseLogonPrompt="False" HasExportButton="True" 
                    HasPageNavigationButtons="True" HasPrintButton="True" HasSearchButton ="True" />
            </div>
        </div>
        
    </form>

</body>
</html>
