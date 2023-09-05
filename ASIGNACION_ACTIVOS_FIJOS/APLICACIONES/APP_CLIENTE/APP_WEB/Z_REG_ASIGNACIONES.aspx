<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Z_REG_ASIGNACIONES.aspx.cs" Inherits="Z_REG_ASIGNACIONES" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="css/xFondo.css" rel="stylesheet" type="text/css" />

    <script src="Scripts/JContador_Sesion.js" type="text/javascript"></script>
    <script src="Scripts/jquery.idletimer.js" type="text/javascript"></script>

    <script type="module" src="js/Reg_Mov_Asignaciones.js?v=<% Response.Write(string.Concat(string.Format("{0:dd/MM/yyyy}", DateTime.Now), " ", string.Format("{0:hh:mm:ss}", DateTime.Now))); %>"></script>
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Paginas_Contenidos" Runat="Server">
    <div id="sessionTimeoutWarning" style="display: none; float:none"></div>
    <div class="loader" style="display:none;"></div>

    <div id="Mi_Modelo_Principal" class="container-fluid" style="width:100%;height:100%;float:left">
        <div class="row" style="margin-left:0.1%;width:100%; height:auto !important; ">
            <div class="col-sm-12 col-lg-12 col-xs-12 col-md-12" style="text-align:center;">
                <h1 id="cTitulo" class="bTitulos">ASIGNACIONES DE ACTIVOS FIJOS A EMPLEADOS</h1>
            </div>           
        </div>
        <div class="row" style="margin-left:0.1%;width:100%; height:auto !important; ">
            <div class="col-sm-12 col-lg-12 col-xs-12 col-md-12 botones_comando" style="width:auto;">
                <button id="Cmd_Nuevo" data-bind="click: Agregar_Enc" style="width: auto;" title="Agregar Registro Nuevo..." >Nuevo</button>
                <button id="Cmd_Imprimir" data-bind="click: Imprimir_Enc" style="width: auto;" title="Imprimir Registro Existente...">Imprimir</button>
            </div>                     
        </div>
        <div class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
            <div class="col-sm-10 col-lg-10 col-xs-10 col-md-10">
                <input class="form-control Estilos_Encabezados" data-bind="value: search, valueUpdate: 'afterkeydown'" type="text" maxlength="1000" placeholder="BUSQUEDA" value="" spellcheck="false" />
            </div>
            <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                <select class="form-control Estilos_Encabezados" spellcheck="false" data-bind="value: ID_Estado, options: lst_Estados, optionsValue: 'ID', optionsText: 'DESCRIPCION', event: { change: load_Datos_Asignaciones_ENC } "></select>
            </div> 
        </div>      
        <div class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
            <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12">
                <div class="table-responsive" style="overflow-y:scroll;">
                    <table class="table table-bordered table-condensed" style="width:150%; max-width:150%">
                        <thead>
                            <tr style="font-size:1.2em;">
                                <th style="text-align:center;vertical-align:middle;"><strong>REG.</strong></th>
                                <th style="text-align:center;vertical-align:middle;"><strong>CODIGO</strong></th>
                                <th style="text-align:center;vertical-align:middle;"><strong>FECHA</strong></th>
                                <th style="text-align:center;vertical-align:middle;"><strong>MOVIMIENTO</strong></th>
                                <th style="text-align:center;vertical-align:middle;"><strong>EMPLEADO</strong></th>
                                <th style="text-align:center;vertical-align:middle;"><strong>CANTIDAD</strong></th>
                                <th style="text-align:center;vertical-align:middle;"><strong>MONTO(C$)</strong></th>
                                <th style="text-align:center;vertical-align:middle;"><strong>ESTADO</strong></th>
                                <th style="text-align:center;vertical-align:middle;"><strong>BAJA</strong></th>
                                <th style="text-align:center;vertical-align:middle;"><strong>EDITADO</strong></th>
                                <th style="text-align:center;vertical-align:middle;"><strong>ACCIONES</strong></th>
                            </tr>
                        </thead>
                        <tbody data-bind="visible: xReg_Total_Enc">
                            <tr>
                                <td colspan="11" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                            </tr>
                        </tbody>
                        <tbody data-bind="foreach: g_Paginacion">
                            <tr data-bind="click: function (data, event) { $root.selectRecord(data, $index() + 1) }, attr: { id: $index() + 1 }">
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: ($index() + 1)"></td>
                                <td style="display:none;" data-bind="text: ID"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: CODIGO"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: FECHA"></td>
                                <td style="display:none;" data-bind="text: ID_TIPO_MOVIMIENTO"></td>
                                <td style="vertical-align:middle;" data-bind="text: DESC_TIPO_MOVIMIENTO"></td>
                                <td style="display:none;" data-bind="text: ID_EMPLEADO"></td>
                                <td style="vertical-align:middle;" data-bind="text: EMPLEADO"></td>
                                <td style="display:none;" data-bind="text: CONCEPTO"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: CANTIDAD"></td>
                                <td style="text-align:right;vertical-align:middle;" data-bind="text: COSTO"></td>
                                <td style="display:none;" data-bind="text: ID_ESTADO"></td>
                                <td style="display:none;" data-bind="text: DESC_BAJA"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: DESC_ESTADO"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: BAJA"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: EDIT"></td>
                                <td style="text-align:center;vertical-align:middle;">
                                    <button data-bind="click: $root.selectRow_Editar" type="button" class="btn ink-reaction btn-xs btn-primary">Editar</button>
                                    <button data-bind="click: $root.selectRow_Baja" type="button" class="btn ink-reaction btn-xs btn-danger">Baja</button>
                                    <button data-bind="click: $root.selectRow_Reactivar" type="button" class="btn ink-reaction btn-xs btn-info">Reactivar</button>
                                    <button data-bind="click: $root.selectRow_Imprimir" type="button" class="btn ink-reaction btn-xs btn-warning">Imprimir</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="box-footer clearfix" style="text-align:center;">
                        <div class="row" data-bind="visible: yReg_Total_Enc" style="text-align:left;margin-bottom:2%;margin-left:0.1%;">
                            <div class="col-md-offset-9 col-xs-offset-9 col-lg-offset-9 col-xm-offset-9 col-md-3 col-xs-3 col-lg-3 col-sm-3" style="border: 1px solid black;">
                                <span style="font-weight:bold;" data-bind="text: 'Cantidad: ' + GTCantidad()" class="text-bold text-danger h4"></span>
                            </div>
                        </div>
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
    <div id="Frm_DATOS" class="Ventanas">
        <div class="container-fluid">
            <ul id="tabs_01" class="nav nav-tabs nav-pills nav-justified indigo" data-tabs="tabs_01">
                <li class="nav-item"><a href="#tab1" data-toggle="tab"><span class="glyphicon glyphicon-star"></span>Encabezado del Documento de Asignaciones</a></li>
                <li class="nav-item active"><a href="#tab2" data-toggle="tab" role="tab"><span class="glyphicon glyphicon-subtitles"></span>Detalle del Documento de Asignaciones</a></li>
            </ul>
            <div id="my-tab-content_01" class="tab-content card" style="">
                <div class="tab-pane" id="tab1">
                    <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                        <label for="txt_ingreso" class="col-sm-1 col-lg-1 col-xs-1 col-md-1">Fecha:</label>  
                        <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                            <input id="Dtp_Fecha" type="text" class="form-control EncInputBox" style="width:60%;text-align:center;font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="15" spellcheck="false" title="Fecha del Registro del Documento..." />
                        </div>
                        <label for="txt_movimiento" class="col-sm-1 col-lg-1 col-xs-1 col-md-1">Tipo:</label>  
                        <div class="col-sm-3 col-lg-3 col-xs-3 col-md-3">
                            <select id="Cmb_Tipo_Movimientos" class="form-control EncComboBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" spellcheck="false">
                                <option value="0">Seleccione uno...</option>
                            </select>
                        </div>
                    </div>
                    <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                        <label for="txt_empleado" class="col-sm-1 col-lg-1 col-xs-1 col-md-1">Empleado:</label>  
                        <div class="col-md-1 col-xs-1 col-lg-1 col-sm-1">
                            <button id="Cmd_Buscar_Empleados" class="form-control" title="Búsqueda de Registros Existentes..." data-bind="click: Listar_Empleados_Det"></button>
                        </div>
                        <div class="col-sm-10 col-lg-10 col-xs-10 col-md-10">
                            <input id="Txt_Empleados" type="text" class="form-control EncInputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" spellcheck="false" title="Nombre Completo del Empleado..." readonly="readonly"  />
                        </div>
                    </div>
                    <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                        <label for="txt_concepto" class="col-sm-1 col-lg-1 col-xs-1 col-md-1">Concepto:</label>
                        <div class="col-sm-11 col-lg-11 col-xs-11 col-md-11">
                            <textarea id="Txt_Concepto" class="form-control EncInputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="1000" rows="3" spellcheck="false" title="Concepto de la Transacción del Documento ..."></textarea>
                        </div>
                    </div>  
                </div>
                <div class="tab-pane active" id="tab2">
                    <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                        <label for="txt_producto" class="col-md-1 col-xs-1 col-lg-1 col-sm-1">Artículo:</label>
                        <div class="col-md-1 col-xs-1 col-lg-1 col-sm-1">
                            <button id="Cmd_Buscar_Articulos" class="form-control" title="Búsqueda de Registros Existentes..." data-bind="click: Listar_Articulos_Det"></button>
                        </div>
                        <div class="col-md-7 col-xs-7 col-lg-7 col-sm-7">
                            <input id="Txt_Desc_Articulos" type="text" class="form-control DetInputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" spellcheck="false" title="Descripción del Artículos..." readonly="readonly" />
                        </div> 
                        <%--<label for="txt_precio" class="col-md-1 col-xs-1 col-lg-1 col-sm-1">Costo:</label>--%>
                        <div class="col-md-2 col-xs-2 col-lg-2 col-sm-2" style="display:none;">
                            <input id="Txt_Costo" type="text" class="form-control DetInputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;text-align:center;" spellcheck="false" title="Precio o Costo del Articulo a Ingresar..." />
                        </div>      
                        <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2" style="text-align:center;">
                            <button id="Cmd_Agregar_Det" class="form-control" data-bind="click: Agregar_Det" style="width: auto;" title="Agregar Registros...">Agregar</button>
                        </div>  
                    </div>
                    <div class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
                        <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12">
                            <div class="table-responsive" style="overflow-y:scroll;height:15em;">
                                <table class="table table-bordered table-condensed" style="width:100%; max-width:100%">
                                    <thead>
                                        <tr style="font-size:1.2em;">
                                            <th style="text-align:center;"><strong>REG.</strong></th>
                                            <th style="text-align:center;"><strong>SIBE</strong></th>
                                            <th style="text-align:center;"><strong>DESCRIPCION</strong></th>
                                            <th style="text-align:center;"><strong>MARCA</strong></th>
                                            <th style="text-align:center;"><strong>MODELO</strong></th>
                                            <th style="text-align:center;"><strong>COLOR</strong></th>
                                            <th style="text-align:center;"><strong>SERIE</strong></th>
                                            <th style="text-align:center;"><strong>PROCEDENCIA</strong></th>
                                            <th style="text-align:center;"><strong>COSTO</strong></th>
                                            <th style="text-align:center;"><strong>ACCIONES</strong></th>
                                        </tr>
                                    </thead>
                                    <tbody data-bind="visible: xReg_Total_Det">
                                        <tr>
                                            <td colspan="10" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                                        </tr>
                                    </tbody>
                                    <tbody data-bind="foreach: g_Paginacion_Det">
                                        <tr data-bind="click: function (data, event) { $root.selectRecord_Det(data, $index() + 1) }, attr: { id: $index() + 1 }">
                                            <td style="text-align:center;vertical-align:middle;" data-bind="text: ($index() + 1)"></td>
                                            <td style="display:none;" data-bind="text: ID"></td>
                                            <td style="display:none;" data-bind="text: ID_ARTICULO"></td>
                                            <td style="vertical-align:middle;" data-bind="text: COD_ARTICULO"></td>
                                            <td style="vertical-align:middle;" data-bind="text: DESC_ARTICULO"></td>
                                            <td style="vertical-align:middle;" data-bind="text: MARCA_ARTICULO"></td>
                                            <td style="vertical-align:middle;" data-bind="text: MODELO_ARTICULO"></td>
                                            <td style="vertical-align:middle;" data-bind="text: COLOR_ARTICULO"></td>
                                            <td style="vertical-align:middle;" data-bind="text: SERIE_ARTICULO"></td>
                                            <td style="vertical-align:middle;" data-bind="text: PROCEDENCIA_ARTICULO"></td>
                                            <td style="vertical-align:middle;" data-bind="text: COSTO"></td>
                                            <td style="text-align:center;vertical-align:middle;" ><button data-bind="click: $root.selectRow_Det_Quitar" type="button" class="btn ink-reaction btn-xs btn-danger">Quitar</button></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="box-footer clearfix" style="text-align:center;">
                                    <div class="form-inline">
                                        <div id="g_divPage_Det" class="pagination invisible" style="margin:0px;">
                                            <span id="g_first_Det" class="first_Det disabled" data-bind="value: g_firstPage_Det"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-double-left"></i></button></span>
                                            <span id="g_previous_Det" class="previous_Det disabled" data-bind="value: g_previousPage_Det"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-left"></i></button></span>
                                            <div class="form-group" style="width:20em;">
                                                <input id="g_inputPage_Det" class="form-control" style="text-align: center;font-weight:bold;" type="text" disabled="disabled" />
                                            </div>
                                            <span id="g_next_Det" class="next_Det disabled" data-bind="value: g_nextPage_Det"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-right"></i></button></span>
                                            <span id="g_last_Det" class="last_Det disabled" data-bind="value: g_lastPage_Det"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-double-right"></i></button></span>
                                        </div>        
                                    </div>                       
                                </div>
                            </div>
                        </div>           
                    </div>
                    <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                        <div class="col-sm-12 col-lg-12 col-xs-12 col-md-12">
                            <input class="form-control InputBox" data-bind="value: search_Det, valueUpdate: 'afterkeydown'" type="text" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="1000" placeholder="BUSQUEDA DE INFORMACION..." spellcheck="false" />
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="Frm_Empleados" class="Ventanas">
        <div class="container-fluid">
            <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                <div class="col-sm-12 col-lg-12 col-xs-12 col-md-12">
                    <input class="form-control InputBox" data-bind="value: search_Emp_Det, valueUpdate: 'afterkeydown'" type="text" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="1000" placeholder="BUSQUEDA DE INFORMACION..." spellcheck="false" />
                </div> 
            </div>      
            <div class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
                <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12">
                    <div class="table-responsive" style="overflow-y:scroll;height:15em;">
                        <table class="table table-bordered table-condensed" style="width:100%; max-width:100%">
                            <thead>
                                <tr style="font-size:1.2em;">
                                    <th style="text-align:center;"><strong>CODIGO</strong></th>
                                    <th style="text-align:center;"><strong>NOMBRE_COMPLETO</strong></th>
                                    <th style="text-align:center;"><strong>CEDULA</strong></th>
                                    <th style="text-align:center;"><strong>CARGO_OCUPACIONAL</strong></th>
                                    <th style="text-align:center;"><strong>CENTRO_COSTO</strong></th>
                                    <th style="text-align:center;"><strong>ACCIONES</strong></th>
                                </tr>
                            </thead>
                            <tbody data-bind="visible: xReg_Total_Emp_Det">
                                <tr>
                                    <td colspan="6" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                                </tr>
                            </tbody>
                            <tbody data-bind="foreach: g_Paginacion_Emp_Det">
                                <tr>
                                    <td style="display:none;" data-bind="text: ID"></td>
                                    <td style="vertical-align:middle;" data-bind="text: CODIGO"></td>
                                    <td style="vertical-align:middle;" data-bind="text: NOMBRE"></td>
                                    <td style="vertical-align:middle;" data-bind="text: CED"></td>
                                    <td style="vertical-align:middle;" data-bind="text: DESC_CARGO"></td>
                                    <td style="vertical-align:middle;" data-bind="text: DESC_AREA"></td>
                                    <td style="text-align:center;vertical-align:middle;" ><button data-bind="click: $root.selectRow_Emp_Det" type="button" class="btn ink-reaction btn-xs btn-danger">Seleccionar</button></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="box-footer clearfix" style="text-align:center;">
                            <div class="form-inline">
                                <div id="g_divPage_Emp_Det" class="pagination invisible" style="margin:0px;">
                                    <span id="g_first_Emp_Det" class="first_Emp_Det disabled" data-bind="value: g_firstPage_Emp_Det"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-double-left"></i></button></span>
                                    <span id="g_previous_Emp_Det" class="previous_Emp_Det disabled" data-bind="value: g_previousPage_Emp_Det"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-left"></i></button></span>
                                    <div class="form-group" style="width:20em;">
                                        <input id="g_inputPage_Emp_Det" class="form-control" style="text-align: center;font-weight:bold;" type="text" disabled="disabled" />
                                    </div>
                                    <span id="g_next_Emp_Det" class="next_Emp_Det disabled" data-bind="value: g_nextPage_Emp_Det"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-right"></i></button></span>
                                    <span id="g_last_Emp_Det" class="last_Emp_Det disabled" data-bind="value: g_lastPage_Emp_Det"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-double-right"></i></button></span>
                                </div>        
                            </div>                       
                        </div>
                    </div>
                </div>           
            </div>
        </div>
    </div>

    <div id="Frm_Articulos" class="Ventanas">
        <div class="container-fluid">
            <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                <div class="col-sm-12 col-lg-12 col-xs-12 col-md-12">
                    <input class="form-control InputBox" data-bind="value: search_Art_Det, valueUpdate: 'afterkeydown'" type="text" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="1000" placeholder="BUSQUEDA DE INFORMACION..." spellcheck="false" />
                </div> 
            </div>    
            <div class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
                <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12">
                    <div class="table-responsive" style="overflow-y:scroll;height:25em;">
                        <table class="table table-bordered table-condensed" style="width:100%; max-width:100%">
                            <thead>
                                <tr style="font-size:1.2em;">
                                    <th style="text-align:center;"><strong>X</strong></th>
                                    <th style="text-align:center;"><strong>SIBE</strong></th>
                                    <th style="text-align:center;"><strong>DESCRIPCION</strong></th>
                                    <th style="text-align:center;"><strong>MARCA</strong></th>
                                    <th style="text-align:center;"><strong>MODELO</strong></th>
                                    <th style="text-align:center;"><strong>COLOR</strong></th>
                                    <th style="text-align:center;"><strong>SERIE</strong></th>
                                    <th style="text-align:center;"><strong>PROCEDENCIA</strong></th>
                                    <th style="text-align:center;"><strong>COSTO</strong></th>
                                    <th style="text-align:center;"><strong>ACCIONES</strong></th>
                                </tr>
                            </thead>
                            <tbody data-bind="visible: xReg_Total_Art_Det">
                                <tr>
                                    <td colspan="10" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                                </tr>
                            </tbody>
                            <tbody data-bind="foreach: g_Paginacion_Art_Det">
                                <tr>
                                    <td data-bind="" style="vertical-align:middle;font-size: 0.9em; text-align: center">
                                        <label class="checkbox checkbox-inline checkbox-styled">
                                            <input type="checkbox" data-bind="checked: SELECCION"><span></span>
                                        </label>
                                    </td>
                                    <td style="display:none;" data-bind="text: ID"></td>
                                    <td style="vertical-align:middle;" data-bind="text: CODIGO"></td>
                                    <td style="vertical-align:middle;" data-bind="text: DESCRIPCION"></td>
                                    <td style="vertical-align:middle;" data-bind="text: DESC_MARCA"></td>
                                    <td style="vertical-align:middle;" data-bind="text: DESC_MODELO"></td>
                                    <td style="vertical-align:middle;" data-bind="text: DESC_COLOR"></td>
                                    <td style="vertical-align:middle;" data-bind="text: SERIE"></td>
                                    <td style="vertical-align:middle;" data-bind="text: DESC_PROCEDENCIA"></td>
                                    <td style="vertical-align:middle;" data-bind="text: COSTO"></td>
                                    <td style="text-align:center;vertical-align:middle;" ><button data-bind="click: $root.selectRow_Art_Det" type="button" class="btn ink-reaction btn-xs btn-danger">Seleccionar</button></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="box-footer clearfix" style="text-align:center;">
                            <div class="form-inline">
                                <div id="g_divPage_Art_Det" class="pagination invisible" style="margin:0px;">
                                    <span id="g_first_Art_Det" class="first_Art_Det disabled" data-bind="value: g_firstPage_Art_Det"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-double-left"></i></button></span>
                                    <span id="g_previous_Art_Det" class="previous_Art_Det disabled" data-bind="value: g_previousPage_Art_Det"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-left"></i></button></span>
                                    <div class="form-group" style="width:20em;">
                                        <input id="g_inputPage_Art_Det" class="form-control" style="text-align: center;font-weight:bold;" type="text" disabled="disabled" />
                                    </div>
                                    <span id="g_next_Art_Det" class="next_Art_Det disabled" data-bind="value: g_nextPage_Art_Det"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-right"></i></button></span>
                                    <span id="g_last_Art_Det" class="last_Art_Det disabled" data-bind="value: g_lastPage_Art_Det"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-double-right"></i></button></span>
                                </div>        
                            </div>                       
                        </div>
                    </div>
                </div>           
            </div>
        </div>
    </div>

    <div id="Frm_Impresiones" class="Ventanas">
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
        <div id="xOpt_Rpt" class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
            <label for="txt_leyenda" class="col-md-2 col-xs-2 col-lg-2 col-sm-2">Inicio / Fin:</label>
            <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                <div id='Dtp_Fecha_rpt' style="color:maroon;font-weight:bold;"></div>
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
        
</asp:Content>

