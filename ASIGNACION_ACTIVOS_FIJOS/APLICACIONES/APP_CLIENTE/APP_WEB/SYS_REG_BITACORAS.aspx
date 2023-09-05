<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SYS_REG_BITACORAS.aspx.cs" Inherits="SYS_REG_BITACORAS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="css/xFondo.css" rel="stylesheet" type="text/css" />

    <script src="Scripts/JContador_Sesion.js" type="text/javascript"></script>
    <script src="Scripts/jquery.idletimer.js" type="text/javascript"></script>

    <script type="module" src="js/Sys_Reg_Bitacoras.js?v=<% Response.Write(string.Concat(string.Format("{0:dd/MM/yyyy}", DateTime.Now), " ", string.Format("{0:hh:mm:ss}", DateTime.Now))); %>"></script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Paginas_Contenidos" Runat="Server" onload="Javascript:history.go(1);" onunload="Javascript:history.go(1);">
    <div id="sessionTimeoutWarning" style="display: none; float:none"></div>
    <div class="loader" style="display:none;"></div>

    <div id="Mi_Modelo_Principal" style="width:100%;height:100%;float:left;">
        <div class="row" style="margin-left:0.1%;width:100%; height:auto !important; ">
            <div class="col-sm-12 col-lg-12 col-xs-12 col-md-12" style="text-align:center;">
                <h1 id="cTitulo" class="bTitulos">REGISTRO DE LAS BITACORAS DEL SISTEMA</h1>
            </div>           
        </div>
        <div class="row" style="margin-left:0.1%;margin-top:0.1%;width:100%; height:auto !important;">
            <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                <select class="form-control Estilos_Encabezados" spellcheck="false" data-bind="value: ID_Usuario, options: lst_Usuarios, optionsValue: 'ID', optionsText: 'DESCRIPCION', event: { change: load_Datos_Sesiones }"></select>
            </div>        
        </div> 
        <div class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
            <div class="col-sm-6 col-lg-6 col-xs-6 col-md-6">
                <div class="col-sm-12 col-lg-12 col-xs-12 col-md-12">
                    <input class="form-control Estilos_Encabezados" data-bind="value: search, valueUpdate: 'afterkeydown'" type="text" maxlength="1000" placeholder="BUSQUEDA" value="" spellcheck="false" />
                </div> 
                <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12">
                    <div class="table-responsive" style="overflow-y:scroll;height:25em;">
                        <table class="table table-bordered table-condensed" style="width:100%; max-width:100%">
                            <thead>
                                <tr>
                                    <th style="text-align:center;vertical-align:middle;width:20%"><strong>REG.</strong></th>
                                    <th style="text-align:center;vertical-align:middle;width:20%"><strong>FECHA</strong></th>
                                    <th style="text-align:center;vertical-align:middle;width:20%"><strong>ROL</strong></th>
                                    <th style="text-align:center;vertical-align:middle;width:20%;"><strong>ESTADO</strong></th>
                                    <th style="text-align:center;vertical-align:middle;width:20%"><strong>ACCIONES</strong></th>
                                </tr>
                            </thead>
                            <tbody data-bind="visible: xReg_Total">
                                <tr>
                                    <td colspan="5" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                                </tr>
                            </tbody>
                            <tbody data-bind="foreach: g_Paginacion">
                                <tr>
                                    <td style="text-align:center;vertical-align:middle;" data-bind="text: ID"></td>
                                    <td style="text-align:center;vertical-align:middle;" data-bind="text: FECHA"></td>
                                    <td style="display:none;" data-bind="text: USUARIO"></td>
                                    <td style="vertical-align:middle;" data-bind="text: ROL"></td>
                                    <td style="text-align:center;vertical-align:middle;" data-bind="text: ESTADO"></td>
                                    <td style="text-align:center;vertical-align:middle;">
                                        <button data-bind="click: $root.selectRow_Seleccionar" type="button" class="btn ink-reaction btn-xs btn-primary">Seleccionar</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="box-footer clearfix" style="text-align:center;">
                            <div class="form-inline">
                                <div id="g_divPage" class="pagination invisible" style="margin:0px;">
                                    <span id="g_first" class="first disabled" data-bind="value: g_firstPage"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-double-left"></i></button></span>
                                    <span id="g_previous" class="previous disabled" data-bind="value: g_previousPage"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-left"></i></button></span>
                                    <div class="form-group" style="width:20em;">
                                        <input id="g_inputPage" class="form-control" style="text-align: center;font-weight:bold;" type="text" disabled="disabled" />
                                    </div>
                                    <span id="g_next" class="next disabled" data-bind="value: g_nextPage"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-right"></i></button></span>
                                    <span id="g_last" class="last disabled" data-bind="value: g_lastPage"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-double-right"></i></button></span>
                                </div>        
                            </div>                       
                        </div>
                    </div>
                </div>           
            </div>
            <div class="col-sm-6 col-lg-6 col-xs-6 col-md-6">
                <div class="col-sm-12 col-lg-12 col-xs-12 col-md-12">
                    <input class="form-control Estilos_Encabezados" data-bind="value: search_02, valueUpdate: 'afterkeydown'" type="text" maxlength="1000" placeholder="BUSQUEDA" value="" spellcheck="false" />
                </div> 
                <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12">
                    <div class="table-responsive" style="overflow-y:scroll;height:25em;">
                        <table class="table table-bordered table-condensed" style="width:100%; max-width:100%">
                            <thead>
                                <tr>
                                    <th style="text-align:center;vertical-align:middle;width:20%"><strong>REG.</strong></th>
                                    <th style="text-align:center;vertical-align:middle;width:20%"><strong>HORA</strong></th>
                                    <th style="text-align:center;vertical-align:middle;width:20%"><strong>VENTANA</strong></th>
                                    <th style="text-align:center;vertical-align:middle;width:20%;"><strong>ANTES</strong></th>
                                    <th style="text-align:center;vertical-align:middle;width:20%;"><strong>DESPUES</strong></th>
                                </tr>
                            </thead>
                            <tbody data-bind="visible: xReg_Total_02">
                                <tr>
                                    <td colspan="5" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                                </tr>
                            </tbody>
                            <tbody data-bind="foreach: g_Paginacion_02">
                                <tr>
                                    <td style="text-align:center;vertical-align:middle;" data-bind="text: ID"></td>
                                    <td style="text-align:center;vertical-align:middle;" data-bind="text: HORA"></td>
                                    <td style="vertical-align:middle;" data-bind="text: VENTANA"></td>
                                    <td style="vertical-align:middle;" data-bind="text: ANTES"></td>
                                    <td style="vertical-align:middle;" data-bind="text: DESPUES"></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="box-footer clearfix" style="text-align:center;">
                            <div class="form-inline">
                                <div id="g_divPage_02" class="pagination invisible" style="margin:0px;">
                                    <span id="g_first_02" class="first_02 disabled" data-bind="value: g_firstPage_02"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-double-left"></i></button></span>
                                    <span id="g_previous_02" class="previous_02 disabled" data-bind="value: g_previousPage_02"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-left"></i></button></span>
                                    <div class="form-group" style="width:20em;">
                                        <input id="g_inputPage_02" class="form-control" style="text-align: center;font-weight:bold;" type="text" disabled="disabled" />
                                    </div>
                                    <span id="g_next_02" class="next_02 disabled" data-bind="value: g_nextPage_02"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-right"></i></button></span>
                                    <span id="g_last_02" class="last_02 disabled" data-bind="value: g_lastPage_02"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-double-right"></i></button></span>
                                </div>        
                            </div>                       
                        </div>
                    </div>
                </div>   
            </div>
       </div>
    </div>
    
    <div id="Frm_Det_Impresiones" class="Ventanas">
        <div class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
            <label for="txt_leyenda_1" class="col-md-2 col-xs-2 col-lg-2 col-sm-2">Informe:</label>
            <div class="col-sm-8 col-lg-8 col-xs-8 col-md-8">
                <select id="Cmb_Informes" class="form-control" style="color:Maroon;font-weight:bold;">
                    <option value="0">Seleccione uno...</option>
                </select>  
            </div>
            <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                <select id="Cmb_Tipo_Rpt" class="form-control" style="color:Maroon;font-weight:bold;">
                    <option value="1">PDF</option>
                    <option value="2">EXCEL</option>
                    <option value="3">VISOR</option>
                </select>     
            </div>
        </div>
    </div>
</asp:Content>

