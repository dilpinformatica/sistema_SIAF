<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Z_REG_PROVEEDORES.aspx.cs" Inherits="Z_REG_PROVEEDORES" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="css/xFondo.css" rel="stylesheet" type="text/css" />

    <script src="Scripts/JContador_Sesion.js" type="text/javascript"></script>
    <script src="Scripts/jquery.idletimer.js" type="text/javascript"></script>

    <script type="module" src="js/Reg_Proveedores.js?v=<% Response.Write(string.Concat(string.Format("{0:dd/MM/yyyy}", DateTime.Now), " ", string.Format("{0:hh:mm:ss}", DateTime.Now))); %>"></script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Paginas_Contenidos" Runat="Server" onload="Javascript:history.go(1);" onunload="Javascript:history.go(1);">
    <div id="sessionTimeoutWarning" style="display: none; float:none"></div>
    <div class="loader" style="display:none;"></div>

    <div id="Mi_Modelo_Principal" style="width:100%;height:100%; float:left">
        <div class="row" style="margin-left:0.1%;width:100%; height:auto !important; ">
            <div class="col-sm-12 col-lg-12 col-xs-12 col-md-12" style="text-align:center;">
                <h1 id="cTitulo" class="bTitulos">EXPEDIENTE DE LOS PROVEEDORES Y SUS CONTACTOS</h1>
            </div>           
        </div>
        <div class="row" style="margin-left:0.1%;margin-top:0.1%;width:100%; height:auto !important;">
            <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12 botones_comando" style="width:auto;">                
                <button id="Cmd_Nuevo" data-bind="click: Nuevo_Enc" style="width: auto;" title="Cuadro Personal del Proveedor..." >Nuevo</button>
                <button id="Cmd_Imprimir" data-bind="click: Imprimir_Enc" style="width: auto;" title="Impresiones Generales..." >Imprimir</button>                
            </div>           
        </div> 
        <div class="row" style="margin-left:0.1%;width:100%; height:auto !important; ">
            <div class="col-sm-10 col-lg-10 col-xs-10 col-md-10">
                <input class="form-control Estilos_Encabezados" data-bind="value: search, valueUpdate: 'afterkeydown'" type="text" maxlength="1000" placeholder="BUSQUEDA" value="" spellcheck="false" />
            </div> 
            <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                <select class="form-control Estilos_Encabezados" spellcheck="false" data-bind="value: ID_Estado, options: lst_Estados, optionsValue: 'ID', optionsText: 'DESCRIPCION', event: { change: load_Datos_Proveedores } "></select>
            </div>
        </div> 
        <div class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
            <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12">
                <div class="table-responsive" style="overflow-y:scroll;">
                    <table class="table table-bordered table-condensed" style="width:120%; max-width:120%">
                        <thead>
                            <tr style="font-size:1.2em;">
                                <th style="text-align:center;vertical-align:middle;width:5%"><strong>REG.</strong></th>
                                <th style="text-align:center;vertical-align:middle;width:5%"><strong>CODIGO</strong></th>
                                <th style="text-align:center;vertical-align:middle;width:5%"><strong>TIPO</strong></th>
                                <th style="text-align:center;vertical-align:middle;width:30%"><strong>NOMBRE_COMPLETO</strong></th>
                                <th style="text-align:center;vertical-align:middle;width:5%"><strong>IDENTIFICACION</strong></th>
                                <th style="text-align:center;vertical-align:middle;width:5%"><strong>INGRESO</strong></th>
                                <th style="text-align:center;vertical-align:middle;width:5%"><strong>ESTADO</strong></th>
                                <th style="text-align:center;vertical-align:middle;width:5%"><strong>BAJA</strong></th>
                                <th style="text-align:center;vertical-align:middle;width:5%"><strong>EDITADO</strong></th>
                                <th style="text-align:center;vertical-align:middle;width:30%"><strong>ACCIONES</strong></th>
                            </tr>
                        </thead>
                        <tbody data-bind="visible: xReg_Total">
                            <tr>
                                <td colspan="10" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                            </tr>
                        </tbody>
                        <tbody data-bind="foreach: g_Paginacion">
                            <tr data-bind="click: function (data, event) { $root.selectRecord(data, $index() + 1) }, attr: { id: $index() + 1 }">
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: ($index() + 1)"></td>
                                <td style="display:none;" data-bind="text: ID"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: CODIGO"></td>
                                <td style="display:none;" data-bind="text: ID_TIPO"></td>
                                <td style="vertical-align:middle;" data-bind="text: DESC_TIPO"></td>
                                <td style="vertical-align:middle;" data-bind="text: NOMBRE_COMPLETO"></td>
                                <td style="display:none;" data-bind="text: NOM_01"></td>
                                <td style="display:none;" data-bind="text: NOM_02"></td>
                                <td style="display:none;" data-bind="text: APE_01"></td>
                                <td style="display:none;" data-bind="text: APE_02"></td>
                                <td style="display:none;" data-bind="text: RAZON_SOCIAL"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: IDENTIFICACION"></td>
                                <td style="display:none;" data-bind="text: ID_SEXO"></td>
                                <td style="display:none;" data-bind="text: DESC_SEXO"></td>
                                <td style="display:none;" data-bind="text: DIR"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: INGRESO"></td>
                                <td style="display:none;" data-bind="text: TEL"></td>
                                <td style="display:none;" data-bind="text: CEL_T"></td>
                                <td style="display:none;" data-bind="text: CEL_C"></td>
                                <td style="display:none;" data-bind="text: EMAIL"></td>
                                <td style="display:none;" data-bind="text: ID_ESTADO"></td>
                                <td style="display:none;" data-bind="text: DESC_BAJA"></td>
                                <td style="display:none;" data-bind="text: USER"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: ESTADO"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: BAJA"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: EDIT"></td>
                                <td style="text-align:center;vertical-align:middle;">
                                    <button data-bind="click: $root.selectRow_Editar" type="button" class="btn ink-reaction btn-xs btn-primary">Editar</button>
                                    <button data-bind="click: $root.selectRow_Baja" type="button" class="btn ink-reaction btn-xs btn-danger">Baja</button>
                                    <button data-bind="click: $root.selectRow_Reactivar" type="button" class="btn ink-reaction btn-xs btn-info">Reactivar</button>
                                    <button data-bind="click: $root.selectRow_Contactos" type="button" class="btn ink-reaction btn-xs btn-warning">Contactos</button>
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

    <%-- Ventana Modal para Insertar / Actualizar / Visualizar --%> 
    <div id="Frm_Datos" class="Ventanas">
        <div class="container-fluid">
            <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                <label for="txt_Tipo" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Tipo:</label>
                <div class="col-sm-3 col-lg-3 col-xs-3 col-md-3">
                    <select id="Cmb_Tipo" class="form-control ComboBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" spellcheck="false">
                        <option value="0">Seleccione uno...</option>
                    </select>
                </div> 
                <label for="txt_Identificacion" class="col-sm-1 col-lg-1 col-xs-1 col-md-1 xOpt_01">Cédula:</label> 
                <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2 xOpt_01">
                    <input id="Txt_Identificacion_01" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;text-align:center;" maxlength="14" placeholder="#############A" spellcheck="false" title="Nº Identificación del Proveedor..." />
                </div>
                <label for="txt_Identificacion" class="col-sm-1 col-lg-1 col-xs-1 col-md-1 xOpt_02">RUC:</label> 
                <div class="col-sm-3 col-lg-3 col-xs-3 col-md-3 xOpt_02">
                    <input id="Txt_Identificacion_02" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;text-align:center;" maxlength="16" placeholder="J###############" spellcheck="false" title="Nº Identificación del Proveedor..." />
                </div>
                <label for="txt_sexo" class="col-sm-1 col-lg-1 col-xs-1 col-md-1 xOpt_01">Sexo:</label>  
                <div class="col-sm-3 col-lg-3 col-xs-3 col-md-3 xOpt_01">
                    <select id="Cmb_Sexo" class="form-control ComboBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" spellcheck="false">
                        <option value="0">Seleccione uno...</option>
                    </select>
                </div>     
            </div>
            <div class="row xOpt_02" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                <label for="txt_Razon_Social" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Razón Social:</label> 
                <div class="col-sm-10 col-lg-10 col-xs-10 col-md-10">
                    <input id="Txt_Razon_Social" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="1000" spellcheck="false" title="Razón Social del Proveedor..." />
                </div>
            </div>
            <div class="row xOpt_01" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                <label for="txt_Primer_Nombre" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Primer Nombre:</label>
                <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                    <input id="Txt_Primer_Nombre" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;text-align:center;" maxlength="200" spellcheck="false" title="Primer Nombre del Proveedor..." />
                </div>
                <label for="txt_Segundo_Nombre" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Segundo Nombre:</label> 
                <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                    <input id="Txt_Segundo_Nombre" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;text-align:center;" maxlength="200" spellcheck="false" title="Segundo Nombre del Proveedor..." />
                </div>
            </div> 
            <div class="row xOpt_01" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                <label for="txt_Primer_Apellido" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Primer Apellido:</label>
                <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                    <input id="Txt_Primer_Apellido" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;text-align:center;" maxlength="200" spellcheck="false" title="Primer Apellido del Proveedor..." />
                </div>
                <label for="txt_Segundo_Apellido" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Segundo Apellido:</label> 
                <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                    <input id="Txt_Segundo_Apellido" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;text-align:center;" maxlength="200" spellcheck="false" title="Segundo Apellido del Proveedor..." />
                </div>
            </div>  
            <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                <label for="txt_Direccion" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Dirección:</label>
                <div class="col-sm-7 col-lg-7 col-xs-7 col-md-7">
                    <textarea id="Txt_Direccion" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="1000" rows="3" spellcheck="false" title="Dirección Actual del Proveedor..."></textarea>
                </div>
                <label for="txt_Ingreso" class="col-sm-1 col-lg-1 col-xs-1 col-md-1">Ingreso:</label>
                <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                    <input id="Txt_Ingreso" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="20" spellcheck="false" title="Fecha de Ingreso..." />
                </div>
            </div>
            <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                <label for="txt_Tel" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Teléfono:</label>
                <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                    <input id="Txt_Tel" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="8" placeholder="########" spellcheck="false" title="Nº Teléfono Convencional del Proveedor..." />
                </div>        
                <label for="txt_Tel" class="col-md-offset-1 col-xs-offset-1 col-lg-offset-1 col-xm-offset-1 col-sm-1 col-lg-1 col-xs-1 col-md-1">Tigo:</label>
                <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                    <input id="Txt_Cel_T" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="8" placeholder="########" spellcheck="false" title="Nº Celular Tigo del Proveedor..." />
                </div>        
                <label for="txt_Tel" class="col-md-offset-1 col-xs-offset-1 col-lg-offset-1 col-xm-offset-1 col-sm-1 col-lg-1 col-xs-1 col-md-1">Claro:</label>
                <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                    <input id="Txt_Cel_C" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="8" placeholder="########" spellcheck="false" title="Nº Celular Claro del Proveedor..." />
                </div>        
            </div>   
            <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                <label for="txt_Email" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Correo Electrónico:</label> 
                <div class="col-sm-10 col-lg-10 col-xs-10 col-md-10">
                    <input id="Txt_Email" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="200" spellcheck="false" title="Correo Electrónico del Proveedor..." />
                </div>         
            </div>
        </div>
    </div>
     
    <div id="Frm_Datos_Contactos" class="Ventanas">
        <div class="container-fluid">
            <ul id="tabs_01" class="nav nav-tabs nav-pills nav-justified indigo" data-tabs="tabs_01">
                <li class="nav-item"><a href="#tab1" data-toggle="tab"><span class="glyphicon glyphicon-star"></span>Datos Personales del Contacto</a></li>
                <li class="nav-item active"><a href="#tab2" data-toggle="tab" role="tab"><span class="glyphicon glyphicon-subtitles"></span>Búsqueda de Registros</a></li>
            </ul>

            <div id="my-tab-content_01" class="tab-content card" style="">
                <div class="tab-pane" id="tab1">
                    <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                        <label for="txt_Primer_Nombre" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Primer Nombre:</label>
                        <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                            <input id="Txt_Primer_Nombre_Contacto" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;text-align:center;" maxlength="200" spellcheck="false" title="Primer Nombre del Contacto del Proveedor..." />
                        </div>
                        <label for="txt_Segundo_Nombre" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Segundo Nombre:</label> 
                        <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                            <input id="Txt_Segundo_Nombre_Contacto" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;text-align:center;" maxlength="200" spellcheck="false" title="Segundo Nombre del Contacto del Proveedor..." />
                        </div>
                    </div> 
                    <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                        <label for="txt_Primer_Apellido" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Primer Apellido:</label>
                        <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                            <input id="Txt_Primer_Apellido_Contacto" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;text-align:center;" maxlength="200" spellcheck="false" title="Primer Apellido del Contacto del Proveedor..." />
                        </div>
                        <label for="txt_Segundo_Apellido" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Segundo Apellido:</label> 
                        <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                            <input id="Txt_Segundo_Apellido_Contacto" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;text-align:center;" maxlength="200" spellcheck="false" title="Segundo Apellido del Contacto del Proveedor..." />
                        </div>
                    </div>  
                    <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                        <label for="txt_Direccion" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Dirección:</label>
                        <div class="col-sm-7 col-lg-7 col-xs-7 col-md-7">
                            <textarea id="Txt_Direccion_Actual_Contacto" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="1000" rows="3" spellcheck="false" title="Dirección Actual del Contacto del Proveedor..."></textarea>
                        </div>
                        <label for="txt_ingreso" class="col-sm-1 col-lg-1 col-xs-1 col-md-1">Ingreso:</label>
                        <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                            <input id="Txt_Fecha_Ingreso_Contacto" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="20" spellcheck="false" title="Fecha de Ingreso..." />
                        </div>
                    </div>
                    <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                        <label for="txt_Tipo" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Tipo:</label>  
                        <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                            <select id="Cmb_Tipo_Contacto" class="form-control ComboBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" spellcheck="false">
                                <option value="0">Seleccione uno...</option>
                            </select>
                        </div>
                        <label for="txt_sexo" class="col-sm-1 col-lg-1 col-xs-1 col-md-1">Sexo:</label>  
                        <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                            <select id="Cmb_Sexo_Contacto" class="form-control ComboBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" spellcheck="false">
                                <option value="0">Seleccione uno...</option>
                            </select>
                        </div>
                        <label for="txt_cedula" class="col-sm-1 col-lg-1 col-xs-1 col-md-1">Cédula:</label> 
                        <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                            <input id="Txt_Identificacion_Contacto" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;text-align:center;" maxlength="20" spellcheck="false" title="Nº CEDULA del Contacto del Proveedor..." />
                        </div>                   
                    </div>
                    <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                        <label for="txt_Tel" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Teléfono:</label>
                        <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                            <input id="Txt_Tel_Contacto" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="10" spellcheck="false" title="Nº Teléfono Convencional del Contacto del Proveedor..." />
                        </div>        
                        <label for="txt_Tel" class="col-md-offset-1 col-xs-offset-1 col-lg-offset-1 col-xm-offset-1 col-sm-1 col-lg-1 col-xs-1 col-md-1">Tigo:</label>
                        <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                            <input id="Txt_Cel_T_Contacto" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="10" spellcheck="false" title="Nº Celular Tigo del Contacto del Proveedor..." />
                        </div>        
                        <label for="txt_Tel" class="col-md-offset-1 col-xs-offset-1 col-lg-offset-1 col-xm-offset-1 col-sm-1 col-lg-1 col-xs-1 col-md-1">Claro:</label>
                        <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                            <input id="Txt_Cel_C_Contacto" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="10" spellcheck="false" title="Nº Celular Claro del Contacto del Proveedor..." />
                        </div>        
                    </div>   
                    <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                        <label for="txt_email" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Correo Electrónico:</label> 
                        <div class="col-sm-10 col-lg-10 col-xs-10 col-md-10">
                            <input id="Txt_Email_Contacto" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="1000" spellcheck="false" title="Correo Electrónico del Contacto del Proveedor..." />
                        </div>
                    </div>
                </div>
                <div class="tab-pane active" id="tab2">
                    <div class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
                        <div class="col-sm-12 col-lg-12 col-xs-12 col-md-12">
                            <input class="form-control InputBox" data-bind="value: search_02, valueUpdate: 'afterkeydown'" type="text" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="1000" placeholder="BUSQUEDA" value="" spellcheck="false" />
                        </div> 
                    </div> 
                    <div class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
                        <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12">
                            <div class="table-responsive" style="overflow-y:scroll;height:10em;">
                                <table class="table table-bordered table-condensed" style="width:120%; max-width:120%">
                                    <thead>
                                        <tr style="font-size:1.2em;">
                                            <th style="text-align:center;vertical-align:middle;width:5%"><strong>REG.</strong></th>
                                            <th style="text-align:center;vertical-align:middle;width:15%"><strong>TIPO</strong></th>
                                            <th style="text-align:center;vertical-align:middle;width:10%"><strong>CEDULA</strong></th>
                                            <th style="text-align:center;vertical-align:middle;width:20%"><strong>NOMBRE_COMPLETO</strong></th>
                                            <th style="text-align:center;vertical-align:middle;width:10%"><strong>INGRESO</strong></th>
                                            <th style="text-align:center;vertical-align:middle;width:10%"><strong>EDITADO</strong></th>
                                            <th style="text-align:center;vertical-align:middle;width:10%"><strong>ACCIONES</strong></th>
                                        </tr>
                                    </thead>
                                    <tbody data-bind="visible: xReg_Total_02">
                                        <tr>
                                            <td colspan="7" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                                        </tr>
                                    </tbody>
                                    <tbody data-bind="foreach: g_Paginacion_02">
                                        <tr data-bind="click: function (data, event) { $root.selectRecord_Datos_02(data, $index() + 1) }, attr: { id: $index() + 1 }">
                                            <td style="text-align:center;vertical-align:middle;" data-bind="text: ($index() + 1)"></td>
                                            <td style="display:none;" data-bind="text: ID"></td>
                                            <td style="display:none;" data-bind="text: ID_TIPO"></td>
                                            <td style="vertical-align:middle;" data-bind="text: DESC_TIPO"></td>
                                            <td style="text-align:center;vertical-align:middle;" data-bind="text: CEDULA"></td>
                                            <td style="vertical-align:middle;" data-bind="text: NOMBRE_COMPLETO"></td>
                                            <td style="display:none;" data-bind="text: ID_SEXO"></td>
                                            <td style="display:none;" data-bind="text: DESC_SEXO"></td>
                                            <td style="display:none;" data-bind="text: PRIMER_NOMBRE"></td>
                                            <td style="display:none;" data-bind="text: SEGUNDO_NOMBRE"></td>
                                            <td style="display:none;" data-bind="text: PRIMER_APELLIDO"></td>
                                            <td style="display:none;" data-bind="text: SEGUNDO_APELLIDO"></td>
                                            <td style="display:none;" data-bind="text: DIRECCION"></td>
                                            <td style="display:none;" data-bind="text: TEL"></td>
                                            <td style="display:none;" data-bind="text: CEL_T"></td>
                                            <td style="display:none;" data-bind="text: CEL_C"></td>
                                            <td style="display:none;" data-bind="text: EMAIL"></td>
                                            <td style="text-align:center;vertical-align:middle;" data-bind="text: INGRESO"></td>
                                            <td style="text-align:center;vertical-align:middle;" data-bind="text: EDIT"></td>
                                            <td style="text-align:center;vertical-align:middle;" >
                                                <button data-bind="click: $root.selectRow_Reg_Contacto" type="button" class="btn ink-reaction btn-xs btn-primary">Seleccionar</button>
                                                <button data-bind="click: $root.selectRow_Reg_Contacto_DEL" type="button" class="btn ink-reaction btn-xs btn-danger">Eliminar</button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="box-footer clearfix" style="text-align:center;">
                                    <div class="form-inline">
                                        <div id="g_divPage_02" class="pagination_02 invisible" style="margin:0px;">
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

