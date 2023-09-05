<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Z_REG_ARTICULOS.aspx.cs" Inherits="Z_REG_ARTICULOS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="css/xFondo.css" rel="stylesheet" type="text/css" />

    <script src="Scripts/JContador_Sesion.js" type="text/javascript"></script>
    <script src="Scripts/jquery.idletimer.js" type="text/javascript"></script>

    <script type="module" src="js/Reg_Articulos.js?v=<% Response.Write(string.Concat(string.Format("{0:dd/MM/yyyy}", DateTime.Now), " ", string.Format("{0:hh:mm:ss}", DateTime.Now))); %>"></script>
    <script type="text/javascript" src="js/Documentos_Adjuntos.js?v=<% Response.Write(string.Concat(string.Format("{0:dd/MM/yyyy}", DateTime.Now), " ", string.Format("{0:hh:mm:ss}", DateTime.Now))); %>"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Paginas_Contenidos" Runat="Server" onload="Javascript:history.go(1);" onunload="Javascript:history.go(1);">
    <div id="sessionTimeoutWarning" style="display: none; float:none"></div>
    <div class="loader" style="display:none;"></div>

    <div id="Mi_Modelo_Principal" class="container-fluid" style="width:100%;height:100%; float:left">
        <div class="row" style="margin-left:0.1%;width:100%; height:auto !important; ">
            <div class="col-sm-12 col-lg-12 col-xs-12 col-md-12" style="text-align:center;">
                <h1 class="bTitulos">DATOS DE LOS ARTICULOS</h1>
            </div>           
        </div>
        <div class="row" style="margin-left:0.1%;width:100%; height:auto !important; ">
            <div class="col-sm-12 col-lg-12 col-xs-12 col-md-12 botones_comando" style="width:auto;">
                <button id="Cmd_Nuevo" data-bind="click: Nuevo_Enc" style="width: auto;" title="Agregar Productos N1..." >Nuevo</button>
                <button id="Cmd_Imprimir" data-bind="click: Imprimir_Enc" style="width: auto;" title="Impresiones Generales..." >Imprimir</button>                
            </div>                     
        </div>
        <div class="row" style="margin-left:0.1%;width:100%; height:auto !important; ">
            <div class="col-sm-10 col-lg-10 col-xs-10 col-md-10" style="margin-top:1.5%;">
                <input class="form-control Estilos_Encabezados" data-bind="value: search, valueUpdate: 'afterkeydown'" type="text" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="1000" placeholder="BUSQUEDA" value="" spellcheck="false" />
            </div> 
            <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2" style="margin-top:1.5%;">
                <select class="form-control Estilos_Encabezados" spellcheck="false" data-bind="value: ID_Estado, options: lst_Estados, optionsValue: 'ID', optionsText: 'DESCRIPCION', event: { change: load_Datos_Articulos } "></select>
            </div>
        </div> 
        <div class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
            <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12">
                <div class="table-responsive" style="overflow-y:scroll;">
                    <table class="table table-bordered table-condensed" style="width:200%; max-width:200%">
                        <thead>
                            <tr style="font-size:1.2em;">
                                <th style="text-align:center;"><strong>REG.</strong></th>
                                <th style="text-align:center;"><strong>SIBE</strong></th>
                                <th style="text-align:center;"><strong>DESCRIPCION</strong></th>
                                <th style="text-align:center;"><strong>MARCA</strong></th>
                                <th style="text-align:center;"><strong>MODELO</strong></th>
                                <th style="text-align:center;"><strong>COLOR</strong></th>
                                <th style="text-align:center;"><strong>SERIE</strong></th>
                                <th style="text-align:center;"><strong>CLASE</strong></th>
                                <th style="text-align:center;"><strong>PROCEDENCIA</strong></th>                                
                                <th style="text-align:center;"><strong>COSTO</strong></th>
                                <th style="text-align:center;"><strong>FECHA_COMPRA</strong></th>
                                <th style="text-align:center;"><strong>INGRESO</strong></th>
                                <th style="text-align:center;"><strong>ESTADO</strong></th>
                                <th style="text-align:center;"><strong>BAJA</strong></th>
                                <th style="text-align:center;"><strong>EDITADO</strong></th>
                                <th style="text-align:center;"><strong>ACCIONES</strong></th>
                            </tr>
                        </thead>
                        <tbody data-bind="visible: xReg_Total">
                            <tr>
                                <td colspan="12" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                            </tr>
                        </tbody>
                        <tbody data-bind="foreach: g_Paginacion">
                            <tr data-bind="click: function (data, event) { $root.selectRecord(data, $index() + 1) }, attr: { id: ($index() + 1) }">
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: COD"></td>
                                <td style="display:none;" data-bind="text: ID"></td>
                                <td style="display:none;" data-bind="text: ID_MODELO"></td>
                                <td style="display:none;" data-bind="text: ID_MARCA"></td>
                                <td style="display:none;" data-bind="text: ID_COLOR"></td>
                                <td style="display:none;" data-bind="text: ID_PROCEDENCIA"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: CODIGO"></td>
                                <td style="vertical-align:middle;" data-bind="text: DESCRIPCION"></td>
                                <td style="vertical-align:middle;" data-bind="text: DESC_MARCA"></td>
                                <td style="vertical-align:middle;" data-bind="text: DESC_MODELO"></td>
                                <td style="vertical-align:middle;" data-bind="text: DESC_COLOR"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: SERIE"></td>
                                <td style="display:none;" data-bind="text: ID_CLASE"></td>
                                <td style="vertical-align:middle;" data-bind="text: DESC_CLASE"></td>
                                <td style="vertical-align:middle;" data-bind="text: DESC_PROCEDENCIA"></td>
                                <td style="display:none;vertical-align:middle;" data-bind="text: OBSERVACIONES"></td>
                                <td style="text-align:right;vertical-align:middle;" data-bind="text: COSTO"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: FECHA_COMPRA"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: INGRESO"></td>
                                <td style="display:none;" data-bind="text: ID_ESTADO"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: DESC_ESTADO"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: BAJA"></td>
                                <td style="text-align:center;vertical-align:middle;" data-bind="text: EDIT"></td>
                                <td style="text-align:center;vertical-align:middle;">
                                    <button data-bind="click: $root.selectRow_Editar" type="button" class="btn ink-reaction btn-xs btn-primary">Editar</button>
                                    <button data-bind="click: $root.selectRow_Baja" type="button" class="btn ink-reaction btn-xs btn-warning">Baja</button>
                                    <button data-bind="click: $root.selectRow_Reactivar" type="button" class="btn ink-reaction btn-xs btn-info">Reactivar</button>
                                    <button data-bind="click: $root.selectRow_Adjuntar" type="button" class="btn ink-reaction btn-xs btn-success">Adjuntar</button>
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

    
    <%--Ventanas Secundarias--%>
    <div id="Frm_Datos" class="Ventanas">
        <div class="container-fluid">
            <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                <label for="txt_sibe" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Código SIBE:</label> 
                <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                    <input id="Txt_Codigo" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="50" spellcheck="false" title="Código SIBE del Artículo..." />
                </div>    
                <label for="txt_serie" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Nº SERIE:</label> 
                <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                    <input id="Txt_Serie" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="50" spellcheck="false" title="Nº Serie del Artículo..." />
                </div>    
            </div>
            <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                <label for="txt_Descripcion" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Descripción:</label> 
                <div class="col-sm-7 col-lg-7 col-xs-7 col-md-7">
                    <input id="Txt_Descripcion" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="1000" spellcheck="false" title="Descripción del Artículo..." />
                </div>
                <label for="txt_fecha" class="col-md-1 col-xs-1 col-lg-1 col-sm-1">Ingreso:</label>
                <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                    <input id="Dtp_Fecha" type="text" class="form-control InputBox" style="width:60%;text-align:center;font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="15" spellcheck="false" title="Fecha del Registro..." />
                </div>    
            </div>
            <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                <label for="txt_Tipo" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Categoría(Clase):</label>
                <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                    <select id="Cmb_Tipo_Clase" class="form-control ComboBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" spellcheck="false">
                        <option value="0">Seleccione uno...</option>
                    </select>
                </div> 
                <label for="txt_modelo" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Modelo:</label> 
                <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                    <select id="Cmb_Tipo_Modelo" class="form-control ComboBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" spellcheck="false">
                        <option value="0">Seleccione uno...</option>
                    </select>
                </div>
            </div> 
            <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                <label for="txt_marca" class="col-md-2 col-xs-2 col-lg-2 col-sm-2">Marca:</label>
                <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                    <select id="Cmb_Tipo_Marca" class="form-control ComboBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" spellcheck="false">
                        <option value="0">Seleccione uno...</option>
                    </select>
                </div>
                <label for="txt_color" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Color:</label>
                <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                    <select id="Cmb_Tipo_Color" class="form-control ComboBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" spellcheck="false">
                        <option value="0">Seleccione uno...</option>
                    </select>
                </div>      
            </div> 
            <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                <label for="txt_marca" class="col-md-2 col-xs-2 col-lg-2 col-sm-2">Procedencia:</label>
                <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                    <select id="Cmb_Tipo_Procedencia" class="form-control ComboBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" spellcheck="false">
                        <option value="0">Seleccione uno...</option>
                    </select>
                </div>
                <label for="txt_fecha" class="col-md-1 col-xs-1 col-lg-1 col-sm-1">Costo:</label>
                <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                    <input id="Txt_Costo" type="text" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="20" spellcheck="false" title="Precio de Compra o Costo del Artículo..." />
                </div>
                <label for="txt_fecha" class="col-md-1 col-xs-1 col-lg-1 col-sm-1">Compra:</label>
                <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                    <input id="Dtp_Fecha_Compra" type="text" class="form-control InputBox" style="width:60%;text-align:center;font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="15" spellcheck="false" title="Fecha del Registro..." />
                </div>      
            </div> 
            <div class="row" style="margin-left:0.1%;width:100%;height:100%;padding:0.5em 0.5em 0.5em 0.5em;">
                <label for="txt_observaciones" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">Observaciones:</label>
                <div class="col-sm-10 col-lg-10 col-xs-10 col-md-10">
                    <textarea id="Txt_Observaciones" class="form-control InputBox" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;" maxlength="1000" rows="3" spellcheck="false" title="Observaciones adjuntas..."></textarea>
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
    </div>

    <div id="Frm_Documentos_Adjuntos" class="Ventanas">
         <div class="container-fluid">
            <div id="documentos" class="row loadfiles">
          
            </div>
            <input id="subir" name="files[]" class="form-control" type="file" multiple accept="image/x-png,image/gif,image/jpeg, image/jpg" style="display:none;"  />     
        </div>
    </div>


</asp:Content>

