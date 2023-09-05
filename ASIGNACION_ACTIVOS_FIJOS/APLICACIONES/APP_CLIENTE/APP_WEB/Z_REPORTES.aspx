<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Z_REPORTES.aspx.cs" Inherits="Z_REPORTES" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <link href="css/xFondo.css" rel="stylesheet" type="text/css" />

    <script src="Scripts/JContador_Sesion.js" type="text/javascript"></script>
    <script src="Scripts/jquery.idletimer.js" type="text/javascript"></script>

    <script type="text/javascript" src="js/Rpt_Consultas_Reportes_Esp_Hist.js?v=<% Response.Write(string.Concat(string.Format("{0:dd/MM/yyyy}", DateTime.Now), " ", string.Format("{0:hh:mm:ss}", DateTime.Now))); %>"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Paginas_Contenidos" Runat="Server" onload="Javascript:history.go(1);" onunload="Javascript:history.go(1);">
    <div id="sessionTimeoutWarning" style="display: none; float:none"></div>
    <div class="loader" style="display:none;"></div>

    <div id="Mi_Modelo_Principal" class="container-fluid" style="width:100%;height:100%;float:left">
        <div class="row" style="margin-left:0.1%;width:100%; height:auto !important; ">
            <div class="col-sm-12 col-lg-12 col-xs-12 col-md-12" style="text-align:center;">
                <h1 id="cTitulo" class="bTitulos">IMPRESIONES DE LA PLANILLA DE PAGO</h1>
            </div>           
        </div>
        <div class="row" style="margin-left:0.1%;width:100%; height:auto !important; ">
            <div data-bind="visible: xPlanilla_Quincenal" class="col-sm-3 col-lg-3 col-xs-3 col-md-3">
                <input class="form-control" data-bind="value: search_01, valueUpdate: 'afterkeydown'" type="text" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;background-color:gainsboro;" maxlength="1000" placeholder="BUSQUEDA" value="" spellcheck="false" />
            </div> 
            <div data-bind="visible: xPlanilla_Aguinaldos" class="col-sm-5 col-lg-5 col-xs-5 col-md-5">
                <input class="form-control" data-bind="value: search_02, valueUpdate: 'afterkeydown'" type="text" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;background-color:gainsboro;" maxlength="1000" placeholder="BUSQUEDA" value="" spellcheck="false" />
            </div> 
            <div data-bind="visible: xPlanilla_Vacaciones" class="col-sm-5 col-lg-5 col-xs-5 col-md-5">
                <input class="form-control" data-bind="value: search_03, valueUpdate: 'afterkeydown'" type="text" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;background-color:gainsboro;" maxlength="1000" placeholder="BUSQUEDA" value="" spellcheck="false" />
            </div> 
            <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                <select class="form-control" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;background-color:gainsboro;" spellcheck="false" data-bind="value: ID_Tipo, options: lst_Tipo, optionsValue: 'ID', optionsText: 'DESCRIPCION', optionsCaption: 'SELECCIONE...', event: { change: load_Mis_Planillas } "></select>
            </div>   
            <div data-bind="visible: xPlanilla_Quincenal" class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                <select class="form-control" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;background-color:gainsboro;" spellcheck="false" data-bind="value: ID_Modo, options: lst_Modos, optionsValue: 'ID', optionsText: 'DESCRIPCION', optionsCaption: 'SELECCIONE...', event: { change: load_Mis_Planillas } "></select>
            </div>        
            <div data-bind="visible: xPlanilla_Quincenal" class="col-sm-5 col-lg-5 col-xs-5 col-md-5">
                <select class="form-control" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;background-color:gainsboro;" spellcheck="false" data-bind="value: ID_Periodo, options: lst_Periodos, optionsValue: 'ID', optionsText: 'DESCRIPCION', optionsCaption: 'SELECCIONE...', event: { change: load_Mis_Planillas } "></select>
            </div>         
            <div data-bind="visible: xPlanilla_Aguinaldos" class="col-sm-5 col-lg-5 col-xs-5 col-md-5">
                <select class="form-control" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;background-color:gainsboro;" spellcheck="false" data-bind="value: ID_Periodo_Aguinaldos, options: lst_Periodos_Aguinaldos, optionsValue: 'ID', optionsText: 'DESCRIPCION', optionsCaption: 'SELECCIONE...', event: { change: load_Mis_Planillas } "></select>
            </div>         
            <div data-bind="visible: xPlanilla_Vacaciones" class="col-sm-5 col-lg-5 col-xs-5 col-md-5">
                <select class="form-control" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;background-color:gainsboro;" spellcheck="false" data-bind="value: ID_Periodo_Vacaciones, options: lst_Periodos_Vacaciones, optionsValue: 'ID', optionsText: 'DESCRIPCION', optionsCaption: 'SELECCIONE...', event: { change: load_Mis_Planillas } "></select>
            </div>         
        </div> 
        <div data-bind="visible: xPlanilla_Quincenal" class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
            <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12">
                <div class="table-responsive" style="overflow-y:scroll;height:25em;">
                    <table class="table table-bordered table-condensed" style="width:120%; max-width:120%">
                        <thead>
                            <tr>
                                <th colspan="1"></th>
                                <th colspan="7" class="text-center">DATOS DEL EMPLEADO</th>
                                <th colspan="9" class="text-center">INGRESOS PERCIBIDOS</th>
                                <th colspan="7" class="text-center">DEDUCCIONES APLICADOS</th>
                                <th colspan="2" class="text-center">NETO A RECIBIR</th>
                            </tr>
                            <tr style="font-size:1.2em;">
                                <th style="text-align:center;"><strong>REG.</strong></th>
                                <th style="text-align:center;"><strong>CODIGO</strong></th>
                                <th style="text-align:center;"><strong>NOMBRE_COMPLETO</strong></th>
                                <th style="text-align:center;"><strong>INSS</strong></th>
                                <th style="text-align:center;"><strong>CUENTA</strong></th>
                                <th style="text-align:center;"><strong>CARGO</strong></th>
                                <th style="text-align:center;"><strong>INICIO</strong></th>
                                <th style="text-align:center;"><strong>TIPO</strong></th>
                                <th style="text-align:center;"><strong>DIAS</strong></th>
                                <th style="text-align:center;"><strong>BASICO</strong></th>
                                <th style="text-align:center;"><strong>CANTIDAD</strong></th>
                                <th style="text-align:center;"><strong>HORAS_EXTRAS</strong></th>
                                <th style="text-align:center;"><strong>TRANSPORTE</strong></th>
                                <th style="text-align:center;"><strong>ALIMENTICIO</strong></th>
                                <th style="text-align:center;"><strong>PRESTAMOS</strong></th>
                                <th style="text-align:center;"><strong>OTROS</strong></th>
                                <th style="text-align:center;"><strong>DEVENGADO</strong></th>
                                <th style="text-align:center;"><strong>RET_INSS</strong></th>
                                <th style="text-align:center;"><strong>RET_IR</strong></th>
                                <th style="text-align:center;"><strong>CANTIDAD</strong></th>
                                <th style="text-align:center;"><strong>INASISTENCIA</strong></th>
                                <th style="text-align:center;"><strong>PRESTAMOS</strong></th>
                                <th style="text-align:center;"><strong>OTRAS</strong></th>
                                <th style="text-align:center;"><strong>DEDUCCION</strong></th>
                                <th style="text-align:center;"><strong>NETO</strong></th>
                                <th style="text-align:center;"><strong>DESCRIPCION</strong></th>
                            </tr>
                        </thead>
                        <tbody data-bind="visible: xReg_Total_01">
                            <tr>
                                <td colspan="6" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                                <td colspan="7" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                                <td colspan="6" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                                <td colspan="7" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                            </tr>
                        </tbody>
                        <tbody data-bind="foreach: g_Paginacion_01">
                            <tr>
                                <td style="width:5%;text-align:center;vertical-align:middle;" data-bind="text: ($index() + 1)"></td>
                                <td style="width:8%;text-align:center;vertical-align:middle;" data-bind="text: COD"></td>
                                <td style="width:23%;vertical-align:middle;" data-bind="text: NOMBRE"></td>
                                <td style="width:6%;text-align:center;vertical-align:middle;" data-bind="text: NO_INSS"></td>
                                <td style="width:6%;text-align:center;vertical-align:middle;" data-bind="text: NO_CUENTA"></td>
                                <td style="width:15%;text-align:center;vertical-align:middle;" data-bind="text: CARGO"></td>
                                <td style="width:6%;text-align:center;vertical-align:middle;" data-bind="text: INICIO"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: TIPO_CONTRATO"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: DIAS_A_PAGAR"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: BASICO"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: CANT_HORAS_EXTRAS"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: HORAS_EXTRAS"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: VIATICO_x_TRANSPORTE"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: VIATICO_x_ALIMENTACION"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: PRESTAMOS_OTORGADOS"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: OTROS_INGRESOS"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: DEVENGADO"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: RET_INSS_LABORAL"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: RET_IR"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: CANT_INASISTENCIA"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: INASISTENCIAS"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: PRESTAMOS_DEDUCIDOS"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: OTRAS_DEDUCCIONES"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: TOTAL_DEDUCCION"></td>
                                <td style="width:12%;text-align:center;vertical-align:middle;" data-bind="text: NETO"></td>
                                <td style="width:40%;vertical-align:middle;" data-bind="text: VALOR_LETRAS"></td>
                                <td style="display:none;" data-bind="text: VAL_BASICO"></td>
                                <td style="display:none;" data-bind="text: VAL_DEVENGADO"></td>
                                <td style="display:none;" data-bind="text: VAL_RET_INSS"></td>
                                <td style="display:none;" data-bind="text: VAL_RET_IR"></td>
                                <td style="display:none;" data-bind="text: VAL_DEDUCCION"></td>
                                <td style="display:none;" data-bind="text: VAL_NETO"></td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="box-footer clearfix" style="text-align:center;">
                        <div class="form-inline">
                            <div id="g_divPage_01" class="pagination_01 invisible" style="margin:0px;">
                                <span id="g_first_01" class="first_01 disabled" data-bind="value: g_firstPage_01"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-double-left"></i></button></span>
                                <span id="g_previous_01" class="previous_01 disabled" data-bind="value: g_previousPage_01"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-left"></i></button></span>
                                <div class="form-group" style="width:20em;">
                                    <input id="g_inputPage_01" class="form-control" style="text-align: center;font-weight:bold;" type="text" disabled="disabled" />
                                </div>
                                <span id="g_next_01" class="next_01 disabled" data-bind="value: g_nextPage_01"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-right"></i></button></span>
                                <span id="g_last_01" class="last_01 disabled" data-bind="value: g_lastPage_01"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-double-right"></i></button></span>
                            </div>        
                        </div>                       
                    </div>
                </div>
            </div> 
            <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12" data-bind="visible: yReg_Total_01">
                <span style="font-weight:bold;" data-bind="text: 'Total Reg.: ' + mReg_Total_01() + '; Básico C$ ' + TSueldo_01() + '; Devengado C$ ' + TDevengado_01() + '; INSS C$ ' + TINSS_01() + '; IR C$ ' + TIR_01() + '; Deducción C$ ' + TDeduccion_01() + '; Neto C$ ' + TNeto_01()" class="text-bold text-danger h4"></span>
            </div>          
        </div>
        <div data-bind="visible: xPlanilla_Aguinaldos" class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
            <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12">
                <div class="table-responsive" style="overflow-y:scroll;height:25em;">
                    <table class="table table-bordered table-condensed" style="width:120%; max-width:120%">
                        <thead>
                            <tr>
                                <th colspan="1"></th>
                                <th colspan="6" class="text-center">DATOS DEL EMPLEADO</th>
                                <th colspan="4" class="text-center">INGRESOS PERCIBIDOS</th>
                            </tr>
                            <tr style="font-size:1.2em;">
                                <th style="text-align:center;"><strong>REG.</strong></th>
                                <th style="text-align:center;"><strong>CODIGO</strong></th>
                                <th style="text-align:center;"><strong>NOMBRE_COMPLETO</strong></th>
                                <th style="text-align:center;"><strong>INSS</strong></th>
                                <th style="text-align:center;"><strong>CUENTA</strong></th>
                                <th style="text-align:center;"><strong>CARGO</strong></th>
                                <th style="text-align:center;"><strong>INICIO</strong></th>
                                <th style="text-align:center;"><strong>SUELDO</strong></th>
                                <th style="text-align:center;"><strong>PROPORCION</strong></th>
                                <th style="text-align:center;"><strong>NETO</strong></th>
                                <th style="text-align:center;"><strong>DESCRIPCION</strong></th>
                            </tr>
                        </thead>
                        <tbody data-bind="visible: xReg_Total_02">
                            <tr>
                                <td colspan="5" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                                <td colspan="5" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                            </tr>
                        </tbody>
                        <tbody data-bind="foreach: g_Paginacion_02">
                            <tr>
                                <td style="width:5%;text-align:center;vertical-align:middle;" data-bind="text: ($index() + 1)"></td>
                                <td style="width:8%;text-align:center;vertical-align:middle;" data-bind="text: COD"></td>
                                <td style="width:23%;vertical-align:middle;" data-bind="text: NOMBRE"></td>
                                <td style="width:6%;text-align:center;vertical-align:middle;" data-bind="text: NO_INSS"></td>
                                <td style="width:6%;text-align:center;vertical-align:middle;" data-bind="text: NO_CUENTA"></td>
                                <td style="width:15%;text-align:center;vertical-align:middle;" data-bind="text: CARGO"></td>
                                <td style="width:6%;text-align:center;vertical-align:middle;" data-bind="text: INICIO"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: SUELDO_MENSUAL"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: PROPORCION"></td>
                                <td style="width:12%;text-align:center;vertical-align:middle;" data-bind="text: SUELDO_PROPORCIONAL"></td>
                                <td style="width:40%;vertical-align:middle;" data-bind="text: VALOR_LETRAS"></td>
                                <td style="display:none;" data-bind="text: VAL_SUELDO_MENSUAL"></td>
                                <td style="display:none;" data-bind="text: VAL_SUELDO_PROPORCIONAL"></td>
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
            <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12" data-bind="visible: yReg_Total_02">
                <span style="font-weight:bold;" data-bind="text: 'Total Reg.: ' + mReg_Total_02() + '; Sueldo Mensual C$ ' + TSueldo_02() + '; Neto C$ ' + TNeto_02()" class="text-bold text-danger h4"></span>
            </div>           
        </div>
        <div data-bind="visible: xPlanilla_Vacaciones" class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
            <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12">
                <div class="table-responsive" style="overflow-y:scroll;height:25em;">
                    <table class="table table-bordered table-condensed" style="width:120%; max-width:120%">
                        <thead>
                            <tr>
                                <th colspan="1"></th>
                                <th colspan="6" class="text-center">DATOS DEL EMPLEADO</th>
                                <th colspan="3" class="text-center">INGRESOS PERCIBIDOS</th>
                                <th colspan="8" class="text-center">VACACIONES APLICADOS</th>
                            </tr>
                            <tr style="font-size:1.2em;">
                                <th style="text-align:center;"><strong>REG.</strong></th>
                                <th style="text-align:center;"><strong>CODIGO</strong></th>
                                <th style="text-align:center;"><strong>NOMBRE_COMPLETO</strong></th>
                                <th style="text-align:center;"><strong>INSS</strong></th>
                                <th style="text-align:center;"><strong>CUENTA</strong></th>
                                <th style="text-align:center;"><strong>CARGO</strong></th>
                                <th style="text-align:center;"><strong>INICIO</strong></th>
                                <th style="text-align:center;"><strong>SUELDO</strong></th>
                                <th style="text-align:center;"><strong>DIAS</strong></th>
                                <th style="text-align:center;"><strong>ING_VACACIONES</strong></th>
                                <th style="text-align:center;"><strong>RET_INSS</strong></th>
                                <th style="text-align:center;"><strong>RET_IR</strong></th>
                                <th style="text-align:center;"><strong>DIAS</strong></th>
                                <th style="text-align:center;"><strong>DEDUC_VACACIONES</strong></th>
                                <th style="text-align:center;"><strong>DEDUCCION</strong></th>
                                <th style="text-align:center;"><strong>NETO</strong></th>
                                <th style="text-align:center;"><strong>DESCRIPCION</strong></th>
                            </tr>
                        </thead>
                        <tbody data-bind="visible: xReg_Total_03">
                            <tr>
                                <td colspan="4" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                                <td colspan="4" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                                <td colspan="5" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                                <td colspan="4" style="color:black; font-size:larger; font-weight:bold;text-align:center;">SIN INFORMACION....</td>
                            </tr>
                        </tbody>
                        <tbody data-bind="foreach: g_Paginacion_03">
                            <tr>
                                <td style="width:5%;text-align:center;vertical-align:middle;" data-bind="text: ($index() + 1)"></td>
                                <td style="width:8%;text-align:center;vertical-align:middle;" data-bind="text: COD"></td>
                                <td style="width:23%;vertical-align:middle;" data-bind="text: NOMBRE"></td>
                                <td style="width:6%;text-align:center;vertical-align:middle;" data-bind="text: NO_INSS"></td>
                                <td style="width:6%;text-align:center;vertical-align:middle;" data-bind="text: NO_CUENTA"></td>
                                <td style="width:15%;text-align:center;vertical-align:middle;" data-bind="text: CARGO"></td>
                                <td style="width:6%;text-align:center;vertical-align:middle;" data-bind="text: INICIO"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: SUELDO_MENSUAL"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: DIAS_ACUMULADOS"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: ING_VACACIONES"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: RET_INSS_LABORAL"></td>
                                <td style="display:none;" data-bind="text: APORTE_PATRONAL"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: RET_IR"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: DIAS_DEDUCIR"></td>
                                <td style="width:10%;text-align:center;vertical-align:middle;" data-bind="text: DEDUC_VACACIONES"></td>
                                <td style="width:12%;text-align:center;vertical-align:middle;" data-bind="text: TOTAL_DEDUCCION"></td>
                                <td style="width:12%;text-align:center;vertical-align:middle;" data-bind="text: NETO"></td>
                                <td style="width:40%;vertical-align:middle;" data-bind="text: VALOR_LETRAS"></td>
                                <td style="display:none;" data-bind="text: VAL_SUELDO_MENSUAL"></td>
                                <td style="display:none;" data-bind="text: VAL_ING_VACACIONES"></td>
                                <td style="display:none;" data-bind="text: VAL_RET_INSS"></td>
                                <td style="display:none;" data-bind="text: VAL_APORTE_PATRONAL"></td>
                                <td style="display:none;" data-bind="text: VAL_RET_IR"></td>
                                <td style="display:none;" data-bind="text: VAL_VACACIONES"></td>
                                <td style="display:none;" data-bind="text: VAL_TOTAL_DEDUCCION"></td>
                                <td style="display:none;" data-bind="text: VAL_NETO"></td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="box-footer clearfix" style="text-align:center;">
                        <div class="form-inline">
                            <div id="g_divPage_03" class="pagination_03 invisible" style="margin:0px;">
                                <span id="g_first_03" class="first_03 disabled" data-bind="value: g_firstPage_03"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-double-left"></i></button></span>
                                <span id="g_previous_03" class="previous_03 disabled" data-bind="value: g_previousPage_03"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-left"></i></button></span>
                                <div class="form-group" style="width:20em;">
                                    <input id="g_inputPage_03" class="form-control" style="text-align: center;font-weight:bold;" type="text" disabled="disabled" />
                                </div>
                                <span id="g_next_03" class="next_03 disabled" data-bind="value: g_nextPage_03"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-right"></i></button></span>
                                <span id="g_last_03" class="last_03 disabled" data-bind="value: g_lastPage_03"><button type="button" class="btn ink-reaction btn-icon-toggle btn-primary" style="margin-right:inherit !important;"><i class="fa fa-angle-double-right"></i></button></span>
                            </div>        
                        </div>                       
                    </div>
                </div>
                <div class="col-md-12 col-xs-12 col-lg-12 col-sm-12" data-bind="visible: yReg_Total_03">
                    <span style="font-weight:bold;" data-bind="text: 'Total Reg.: ' + mReg_Total_03() + '; Sueldo Mensual: C$ ' + TSueldo_03() + '; Ingresos C$ ' + TIng_Vacaciones_03() + '; INSS C$ ' + TINSS_03() + '; IR C$ ' + TIR_03() + '; Vacaciones C$ ' + TDeduc_Vacaciones_03() + '; Total Deducción C$ ' + TDeduccion_03() + '; Neto C$ ' + TNeto_03()" class="text-bold text-danger h4"></span>
                </div>
            </div>           
        </div>
        <div class="row" style="margin-left:0.1%;margin-top:1%;width:100%; height:auto !important; ">
            <div class="col-sm-5 col-lg-5 col-xs-5 col-md-5">
                <select class="form-control" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;background-color:gainsboro;" spellcheck="false" data-bind="value: ID_Reporte, options: lst_Reportes, optionsValue: 'ID', optionsText: 'DESCRIPCION', optionsCaption: 'SELECCIONE...'"></select>  
            </div>             
            <div class="col-sm-2 col-lg-2 col-xs-2 col-md-2">
                <select class="form-control" style="font-size:0.9em;color:Maroon;text-transform:uppercase;font-weight:bold;background-color:gainsboro;" spellcheck="false" data-bind="value: ID_Tipo_Rpt, options: lst_Tipo_Rpt, optionsValue: 'ID', optionsText: 'DESCRIPCION', optionsCaption: 'SELECCIONE...'"></select>  
            </div>  
            <div class="btn-group" role="group" aria-label="Basic example">
                <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                    <button id="Cmd_Aplicar" class="form-control" title="Proceso de Aplicación de la Planilla Correspondiente..." data-bind="click: Aplicar_Planilla"><span style="font-size:0.9em;color:navy;text-transform:uppercase;font-weight:bold;">Obtener</span></button>
                </div>
                <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                    <button id="Cmd_Imprimir" class="form-control" title="Impresión de Reportes de la Planilla Correspondiente..." data-bind="click: Imprimir"><span style="font-size:0.9em;color:navy;text-transform:uppercase;font-weight:bold;">Imprimir</span></button>
                </div> 
                <div class="col-sm-4 col-lg-4 col-xs-4 col-md-4">
                    <button id="Cmd_Cerrar" class="form-control" title="Proceso de Cierre de la Planilla Correspondiente..." data-bind="click: Cerrar_Planilla"><span style="font-size:0.9em;color:navy;text-transform:uppercase;font-weight:bold;">Cerrar</span></button>
                </div>    
            </div>           
        </div>
    </div>
</asp:Content>

