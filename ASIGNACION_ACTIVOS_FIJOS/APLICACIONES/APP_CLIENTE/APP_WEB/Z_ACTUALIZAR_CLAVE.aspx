<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Z_ACTUALIZAR_CLAVE.aspx.cs" Inherits="Z_ACTUALIZAR_CLAVE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="css/xFondo.css" rel="stylesheet" type="text/css" />

    <script src="Scripts/JContador_Sesion.js" type="text/javascript"></script>
    <script src="Scripts/jquery.idletimer.js" type="text/javascript"></script>

    <script type="text/javascript" src="js/Sys_Cambiar_Password.js?v=<% Response.Write(string.Concat(string.Format("{0:dd/MM/yyyy}", DateTime.Now), " ", string.Format("{0:hh:mm:ss}", DateTime.Now))); %>"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Paginas_Contenidos" Runat="Server" onload="Javascript:history.go(1);" onunload="Javascript:history.go(1);">
    <div id="sessionTimeoutWarning" style="display: none; float:none"></div>
    <div class="loader" style="display:none;"></div>
     
    <%-- formulario para Imprimir --%>
    <div id="Mi_Modelo_Principal" class="container-fluid" style="width:100%;height:100%;float:left">
        <div class="row" style="margin-left:0.1%;width:100%; height:auto !important; ">
            <div class="col-sm-12 col-lg-12 col-xs-12 col-md-12" style="text-align:center;">
                <h1 id="cTitulo" class="bTitulos">ACTUALIZANDO LA CLAVE DEL USUARIO</h1>
            </div>           
        </div>
        <div class="row" style="margin-top:5%;width:100%; height:auto !important;">
            <label for="txt_codigo" class="col-md-offset-3 col-xs-offset-3 col-lg-offset-3 col-xm-offset-3 col-sm-1 col-lg-1 col-xs-1 col-md-1">Clave:</label>
            <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                <input type="password" class="form-control" data-bind="value: Txt_Password" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;text-align:center;background-color:InfoBackground;" spellcheck="false" title="Digite el Password correspondiente..." />
            </div>  
            <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                <button id="Cmd_Aplicar" class="form-control" title="Imprimir Registro Existente..." data-bind="click: Aplicar" >Actualizar</button>
            </div>
        </div>
    </div>
</asp:Content>

