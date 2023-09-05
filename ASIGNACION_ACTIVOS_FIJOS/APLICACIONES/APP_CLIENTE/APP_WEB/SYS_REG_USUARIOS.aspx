<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SYS_REG_USUARIOS.aspx.cs" Inherits="SYS_REG_USUARIOS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="css/xFondo.css" rel="stylesheet" type="text/css" />

    <script src="Scripts/JContador_Sesion.js" type="text/javascript"></script>
    <script src="Scripts/jquery.idletimer.js" type="text/javascript"></script>

    <script type="module" src="js/Sys_Reg_Usuarios.js?v=<% Response.Write(string.Concat(string.Format("{0:dd/MM/yyyy}", DateTime.Now), " ", string.Format("{0:hh:mm:ss}", DateTime.Now))); %>"></script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Paginas_Contenidos" Runat="Server" onload="Javascript:history.go(1);" onunload="Javascript:history.go(1);">
    <div id="sessionTimeoutWarning" style="display: none; float:none"></div>
    <div class="loader" style="display:none;"></div>

    <div id="Mi_Modelo_Principal" style="width:100%;height:100%;float:left;">
        <div class="row" style="margin-left:0.1%;width:100%; height:auto !important; ">
            <div class="col-sm-12 col-lg-12 col-xs-12 col-md-12" style="text-align:center;">
                <h1 id="cTitulo" class="bTitulos">REGISTRO DE LOS USUARIOS</h1>
            </div>           
        </div>
        <div class="row" style="margin-left:0.1%;margin-top:0.1%;width:100%; height:auto !important;">
            <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12 botones_comando" style="width:auto;">                
                <button id="Cmd_Nuevo" data-bind="click: Agregar_Enc" style="width: auto;" title="Registro Nuevo..." >Nuevo</button>
                <button id="Cmd_Imprimir" data-bind="click: Imprimir_Enc" style="width: auto;" title="Impresiones Generales..." >Imprimir</button>                
            </div>           
        </div> 
        <div class="row" style="margin-left:0.1%;width:100%; height:auto !important; ">
            <div class="col-sm-10 col-lg-10 col-xs-10 col-md-10">
                <input class="form-control Estilos_Encabezados" data-bind="value: search, valueUpdate: 'afterkeydown'" type="text" maxlength="1000" placeholder="BUSQUEDA" value="" spellcheck="false" />
            </div> 
            <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                <select class="form-control Estilos_Encabezados" spellcheck="false" data-bind="value: ID_Estado, options: lst_Estados, optionsValue: 'ID', optionsText: 'DESCRIPCION', event: { change: load_Datos_USUARIOS } "></select>
            </div> 
        </div> 
        <div class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
            <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12">
                <div class="table-responsive" style="overflow-y:scroll;">
                    <table class="table table-bordered table-condensed" style="width:110%; max-width:110%">
                        <thead>
                            <tr>
                                <th style="text-align:center;vertical-align:middle;width:5%"><strong>REG.</strong></th>
                                <th style="text-align:center;vertical-align:middle;width:10%"><strong>CODIGO</strong></th>
                                <th style="text-align:center;vertical-align:middle;width:20%;"><strong>NOMBRE</strong></th>
                                <th style="text-align:center;vertical-align:middle;width:10%;"><strong>ROL</strong></th>
                                <th style="text-align:center;vertical-align:middle;width:10%"><strong>ESTADO</strong></th>
                                <th style="text-align:center;vertical-align:middle;width:10%"><strong>BAJA</strong></th>
                                <th style="text-align:center;vertical-align:middle;width:10%"><strong>EDITADO</strong></th>
                                <th style="text-align:center;vertical-align:middle;width:15%"><strong>ACCIONES</strong></th>
                            </tr>
                        </thead>
                        <tbody data-bind="visible: xReg_Total">
                            <tr>
                                <td colspan="8" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                            </tr>
                        </tbody>
                        <tbody data-bind="foreach: g_Paginacion">
                            <tr>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: ($index() + 1)"></td>
                                <td style="display:none;" data-bind="text: ID"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: CODIGO"></td>
                                <td style="vertical-align:middle;" data-bind="text: DESCRIPCION"></td>
                                <td style="display:none;" data-bind="text: ID_ROL"></td>
                                <td style="display:none;" data-bind="text: UID"></td>
                                <td style="display:none;" data-bind="text: PWD"></td>
                                <td style="vertical-align:middle;" data-bind="text: DESC_ROL"></td>
                                <td style="display:none;" data-bind="text: ID_ESTADO"></td>
                                <td style="display:none;" data-bind="text: DESC_BAJA"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: ESTADO"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: BAJA"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: EDIT"></td>
                                <td style="text-align:center;vertical-align:middle;">
                                    <button data-bind="click: $root.selectRow_Editar" type="button" class="btn ink-reaction btn-xs btn-primary">Editar</button>
                                    <button data-bind="click: $root.selectRow_Baja" type="button" class="btn ink-reaction btn-xs btn-danger">Baja</button>
                                    <button data-bind="click: $root.selectRow_Reactivar" type="button" class="btn ink-reaction btn-xs btn-info">Reactivar</button>
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

                                <label for="txt_tamanyo" class="col-sm-3 col-lg-3 col-xs-3 col-md-3">Total x Pág.:</label> 
                                <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                                    <select class="form-control Estilos_Encabezados" spellcheck="false" data-bind="value: ID_Paginas, options: lst_Paginas, optionsValue: 'ID', optionsText: 'DESCRIPCION' "></select>
                                </div>    
                            </div>        
                        </div>                       
                    </div>
                </div>
            </div>           
        </div>
    </div>

    <%-- Ventana Modal para Insertar / Actualizar / Visualizar (Cuadro Personal) --%> 
    <div id="Frm_Datos" class="Ventanas">
        <div class="container-fluid">
            <div class="row" style="width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                <label for="txt_login" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Login:</label>  
                <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                    <input id="Txt_Login" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="100" spellcheck="false"  title="Logín de la Cuenta del Usuario..." />
                </div> 
                <label for="txt_clave" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Clave:</label>  
                <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                    <input id="Txt_Password" type="password" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="100" spellcheck="false"  title="Clave de la Cuenta del Usuario..." />
                </div> 
            </div>
            <div class="row" style="width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                <label for="txt_descripcion" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Nombre:</label>  
                <div class="col-sm-5 col-lg-5 col-xs-5 col-md-5">
                    <input id="Txt_Nombre_Completo" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="1000" spellcheck="false"  title="Nombre Completo del Usuario..." />
                </div> 
                <label for="txt_rol" class="col-sm-1 col-lg-1 col-xs-1 col-md-1">Rol:</label>  
                <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                    <select id="Cmb_Tipo_ROL" class="form-control ComboBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" spellcheck="false">
                        <option value="0">Seleccione uno...</option>
                    </select>
                </div> 
            </div>
        </div>
    </div>
    
    <div id="Frm_Baja" class="Ventanas">
        <div class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
            <label for="txt_fecha" class="col-sm-1 col-lg-1 col-xs-1 col-md-1">Baja:</label> 
            <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                <input id="Txt_Fecha_Baja" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="20" spellcheck="false" title="Fecha de Baja..." />
            </div>
            <label for="txt_observacion" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Observaciones:</label>
            <div class="col-md-7 col-xs-7 col-lg-7 col-sm-7">
                <textarea id="Txt_Observacion_Baja" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" rows="4" spellcheck="false" title="Observaciones Generales Adjuntos..."></textarea>
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

