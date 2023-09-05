// Variable Global
var xUbica = "", xElem = "", yMetodos = [], xSesion_Prueba = "", yUser = "", xBand_Reg_Entradas = 0, xID_REG_ENTRADAS = 0, xID_PROVEEDOR = 0, Mis_Tipos_Movimientos = [],
    xID_ARTICULO = 0, xCOD_ARTICULO = '', xDESC_ARTICULO = '', xCODIGO_ENTRADA = "", xMODO_RPT = 0, Mis_Tipos_Procedencias = [], Mis_Tipos_Altas = [];

//Llamada del Archivo Javascript por Import
let xMetodos = import('./Sys_Funciones_Generales.js');

$(document).ready(function () {
    xMetodos.then(function(Valor){
        yMetodos[0] = Valor.xcreateObservables;
        yMetodos[1] = Valor.xMi_Mensaje;
        yMetodos[2] = Valor.xValidateSave;
        yMetodos[3] = Valor.xListar;
        yMetodos[4] = Valor.xGuardar;
        yMetodos[5] = Valor.xLlenar_Combos;
        yMetodos[6] = Valor.xConfig_Autocomplete;
        yMetodos[7] = Valor.xTecla_Presionada;
        yMetodos[8] = Valor.xObtener_Fecha;
        yMetodos[9] = Valor.xFormato_Numero;
        yMetodos[10] = Valor.formatNumberEntero;
        yMetodos[11] = Valor.formatNumber;

        try {
            /* --- Encabezado de la Pagina ----- */
            // Funcion de Configuracion Inicial y Comportamiento de los Objetos
            xUbica = GetUserXmlInfo('LastTabClicked'); xElem = xUbica.split('º');
            xSesion_Prueba = GetSessionValue("Data_Prueba"); 
            Configuracion_Inicial(); Comportamiento_Objetos();

            // Encabezado Principal: 
            var xMi_Modelo_01 = function (){
                var self = this;

                // Declaración de los Observables...
                let lstObs = ['ID_Estado', 'xReg_Total_Enc', 'yReg_Total_Enc', 'g_current_page', 'search', 'g_nPagina', 'g_nextPage', 'g_nPorPagina', 'g_firstPage', 'g_previousPage'];
                let lstObs_Arrays = ['Mis_Datos', 'g_lstTabla', 'lst_Estados'];

                yMetodos[0](self, lstObs); yMetodos[0](self, lstObs_Arrays, true);

                self.lst_Estados([
                    { ID: -1, DESCRIPCION: "TODOS" },
                    { ID: 0, DESCRIPCION: "BAJA" },
                    { ID: 1, DESCRIPCION: "ALTA" }
                ]);
                   
                // Botones del Encabezado
                self.Agregar_Enc = function () {
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 0) {
                        if (aPermisos.length > 0) {
                            if (aPermisos[0].INS == '0') {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }
                    
                    if (parseInt(self.ID_Estado()) != 1) {
                        xContenido = 'Debe de tener Seleccionado la condición de ALTA para poder Agregar un Registro...';
                        yMetodos[1](xContenido, "warning"); return false;
                    }
                    
                    // Se Visualiza el DIV de la Gestión
                    xBand_Reg_Entradas = 1; xID_REG_ENTRADAS = 0;
                    
                    $('#Frm_DATOS').dialog('open');
                };

                self.Imprimir_Enc = function () {
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 0) {
                        if (aPermisos.length > 0) {
                            if (aPermisos[0].IMP == '0') {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }
                                                                                
                    xMODO_RPT = 0; $('#Frm_Impresiones').dialog('open');
                };
                               
                                
                // Datos Iniciales...
                self.Datos_Encabezados = async () => {
                    $(".loader").fadeIn("slow");
                
                    // Tipos de Procedencia
                    let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_CAT_TIPO_PROCEDENCIAS_AFECTABLE';
                    let Mis_Parametros = JSON.stringify({ });

                    let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                    if (Mis_Registros.d.exito == false){
                        xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                    } else { Mis_Tipos_Procedencias = $.parseJSON(Mis_Registros.d.Mensaje); } 

                    // Tipos de Movimiento
                    Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_CAT_TIPO_MOVIMIENTOS_AFECTABLE';
                    Mis_Parametros = JSON.stringify({ });

                    Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                    if (Mis_Registros.d.exito == false){
                        xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                    } else { Mis_Tipos_Movimientos = $.parseJSON(Mis_Registros.d.Mensaje); } 

                    // Tipos de Entradas (ALTA)
                    Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_CAT_TIPO_ALTAS_AFECTABLE';
                    Mis_Parametros = JSON.stringify({ });

                    Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                    if (Mis_Registros.d.exito == false){
                        xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                    } else { Mis_Tipos_Altas = $.parseJSON(Mis_Registros.d.Mensaje); } 

                    
                    $(".loader").fadeOut("slow");
                };
                self.Datos_Encabezados();

                // Recuperando los Registros para la Cuadricula Principal
                self.ID_Estado(1); 
                self.Cargar_Mis_Entradas = async ( yESTADO ) => {
                    if ((yESTADO == null) || (yESTADO == undefined)){
                        self.Mis_Datos([]); self.xReg_Total_Enc(true); self.yReg_Total_Enc(false); 
                    } else {
                        $(".loader").fadeIn("slow");
                        let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_REG_ENTRADAS_PRODUCTOS';
                        let Mis_Parametros = JSON.stringify({ xId_Estado: yESTADO });

                        let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                        if (Mis_Registros.d.exito == false){
                            xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); self.Mis_Datos([]); self.xReg_Total_Enc(true); self.yReg_Total_Enc(false);
                        } else { 
                            self.Mis_Datos($.parseJSON(Mis_Registros.d.Mensaje)); 
                            if (self.Mis_Datos().length > 0){ self.xReg_Total_Enc(false); self.yReg_Total_Enc(true); } else { self.xReg_Total_Enc(true); self.yReg_Total_Enc(false); }
                        } 
                        $(".loader").fadeOut("slow");
                    }                    
                };
                self.Cargar_Mis_Entradas(self.ID_Estado());   

                self.load_Datos_Entradas = () => {
                    if ((self.ID_Estado() != null) || (self.ID_Estado() != undefined)){
                        self.Cargar_Mis_Entradas(self.ID_Estado());                        
                    } else { self.Mis_Datos([]); self.xReg_Total_Enc(true); self.yReg_Total_Enc(false); }
                };

                //Seleccionando una Fila
                self.selectRow_Editar = function(item){
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 0) {
                        if (aPermisos.length > 0) {
                            if (aPermisos[0].ACT == '0') {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }
                                        
                    if (parseInt(item.ID_ESTADO) == 0) {
                        xContenido = 'No puede Editar este Registro porque está de BAJA...';
                        yMetodos[1](xContenido, "warning"); return false;
                    }

                    
                    // Se recuperan los Datos...
                    // Llamada de las Funciones Locales                    
                    yMetodos[5]("Cmb_Tipo_Procedencias", Mis_Tipos_Procedencias); yMetodos[5]("Cmb_Tipo_Movimientos", Mis_Tipos_Movimientos);
                    yMetodos[5]("Cmb_Tipo_Altas", Mis_Tipos_Altas); 

                    xID_REG_ENTRADAS = parseFloat(item.ID);

                    $("#Dtp_Fecha").val(item.FECHA);$("#Cmb_Tipo_Movimiento").val(parseInt(item.ID_TIPO_ENTRADA));
                    $("#Txt_Proveedor").val(item.PROVEEDOR); xID_PROVEEDOR = parseInt(item.ID_PROVEEDOR);
                    $("#Cmb_Moneda").val(parseInt(item.ID_MONEDA)); $("#Txt_Referencia").val(item.REFERENCIA); 
                    $("#Txt_Concepto").val(item.CONCEPTO); $("#Txt_Observaciones").val(item.OBSERVACIONES); 
                    
                    
                    // Se Visualiza el DIV de la Gestión
                    xBand_Reg_Entradas = 2;
                    $('#Frm_DATOS').dialog('open');
                };

                self.selectRow_Baja = function(item){
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 0) {
                        if (aPermisos.length > 0) {
                            if (aPermisos[0].DEL == '0') {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }
                        
                    if (parseInt(item.ID_ESTADO) == 0) {
                        xContenido = 'Este Registro ya fue dado de BAJA...';
                        yMetodos[1](xContenido, "warning"); return false;
                    }


                    // Se recuperan los Datos...
                    xID_REG_ENTRADAS = parseFloat(item.ID); 

                    $('#Frm_Baja').dialog('open');
                };

                self.selectRow_Imprimir = function(item){
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 0) {
                        if (aPermisos.length > 0) {
                            if (aPermisos[0].DEL == '0') {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }
                                                                                    
                    // Se recuperan los Datos...
                    xID_REG_ENTRADAS = parseFloat(item.ID); 

                    xMODO_RPT = 1; $('#Frm_Impresiones').dialog('open');
                };
                
                self.selectRow_Reactivar = function(item){
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 1) {
                        if (aPermisos.length > 0) {
                            if (aPermisos[0].ACT == '0') {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }
                        
                    
                    if (parseInt(item.ID_ESTADO) == 1) {
                        xContenido = 'Este Registro no ha sido dado de BAJA para poder REACTIVARLO...';
                        yMetodos[1](xContenido, "warning"); return false;
                    }

                    // Se ejecuta la orden...
                    let Reactivar_Registros = async (lID, lUSER, lSESION) => {
                        let Mi_url = "Frm_Metodos_WEB_Services.aspx/Reactivar_CAT_CARGOS_OCUPACIONAL";
                        let Mis_Parametros = JSON.stringify({ xID: lID, xUSER: lUSER, xSESION: lSESION  });

                        let response = await yMetodos[4]('¿Desea REACTIVAR al Registro actual?...', Mi_url, Mis_Parametros);
                        if (response.d.exito == false){
                            xContenido = response.d.Mensaje; yMetodos[1](xContenido, "error"); 
                        } else { 
                            xContenido = 'Acción Realizada con Exito...'; yMetodos[1](xContenido, "success"); 
                            self.ID_Estado(1); self.Datos_Registros(self.ID_Estado());
                        } 
                    };
                    Reactivar_Registros(parseFloat(item.ID), yID_USER, ySESION_USER);
                };

                self.selectRow_Adjuntar = function(item){
                                        
                };


                self.selectRecord = function(item, indice)
                {
                    self.g_Paginacion().forEach(function(valor, index){
                        if(valor.color){
                            $('#' + (index + 1)).removeClass('MiColor')
                            valor.color = false;
                        }
                    })

                    $('#' + indice).addClass('MiColor')
                    item.color = true;
                };


                // Totales
                self.GTCantidad = ko.computed(function () {
                    var xResult = 0;

                    self.Mis_Datos().forEach(function (i) {
                        if (i.VAL_CANTIDAD != undefined && i.VAL_CANTIDAD != '') {
                            xResult = xResult + parseFloat(i.VAL_CANTIDAD);
                        }
                    });
                                        
                    return yMetodos[10](xResult);
                });

                self.GTMonto = ko.computed(function () {
                    var xResult = 0;

                    self.Mis_Datos().forEach(function (i) {
                        if (i.VAL_MONTO != undefined && i.VAL_MONTO != '') {
                            xResult = xResult + parseFloat(i.VAL_MONTO);
                        }
                    });
                                        
                    return yMetodos[11](xResult);
                });

                                  
                
                //Paginación de la Cuadricula
                self.g_current_page(1); self.search(''); self.g_nPagina(1); self.g_nPorPagina(15); self.g_firstPage(1);
                
                self.g_lastPage = ko.computed(function () {
                    var dt = self.Mis_Datos.filtered(self.search());
                    self.g_current_page(1);
                    g_firstEvent();
                    self.g_lstTabla(ko.mapping.toJS(dt));
                    var div = self.g_lstTabla().length / self.g_nPorPagina();
                    var divFloor = Math.floor(div);
                    if (div > divFloor) {
                        div = divFloor + 1;
                    }

                    if (div == 1) {
                        g_unicEvent();
                    }

                    return div;
                }, this);

                self.g_visible_pagination = ko.computed(function () {
                    if (self.g_lstTabla().length == 0) {
                        $("#g_divPage").addClass("invisible");
                    }
                    else {
                        $("#g_divPage").removeClass("invisible");
                    }
                }, this);

                self.g_Paginacion = ko.computed(function () {
                    var page = (parseInt(self.g_current_page()) * parseInt(self.g_nPorPagina())) - parseInt(self.g_nPorPagina());

                    $("#g_inputPage").val('Total Reg.: ' + self.g_lstTabla().length + ' - Pag. ' + self.g_current_page() + ' de ' + self.g_lastPage());

                    if (parseInt(self.g_current_page(), 10) < parseInt(self.g_lastPage(), 10)) {
                        $("#g_divPage").find("span.last").removeClass("disabled");
                        $("#g_divPage").find("span.next").removeClass("disabled");
                    }

                    return self.g_lstTabla.slice(page, page + parseInt(self.g_nPorPagina()));
                });

                $("#g_last").click(function (evt) {
                    if (!$("#g_last").hasClass("disabled")) {
                        self.g_current_page(self.g_lastPage());
                        $("#g_inputPage").val('Total Reg.: ' + self.g_lstTabla().length + ' - Pag. ' + self.g_current_page() + ' de ' + self.g_lastPage());
                        g_lastEvent();
                    }
                });

                $("#g_first").click(function (evt) {
                    if (!$("#g_first").hasClass("disabled")) {
                        self.g_current_page(self.g_firstPage());
                        $("#g_inputPage").val('Total Reg.: ' + self.g_lstTabla().length + ' - Pag. ' + self.g_current_page() + ' de ' + self.g_lastPage());
                        g_firstEvent();
                    }
                });

                $("#g_previous").click(function (evt) {
                    if (!$("#g_previous").hasClass("disabled")) {
                        var g_current_page = parseInt(self.g_current_page(), 10);
                        self.g_previousPage(g_current_page - 1);
                        self.g_current_page(self.g_previousPage());
                        $("#g_inputPage").val('Total Reg.: ' + self.g_lstTabla().length + ' - Pag. ' + self.g_current_page() + ' de ' + self.g_lastPage());

                        $("#g_divPage").find("span.last").removeClass("disabled");
                        $("#g_divPage").find("span.next").removeClass("disabled");

                        if (self.g_current_page() == self.g_firstPage()) {
                            $("#g_divPage").find("span.first").addClass("disabled");
                            $("#g_divPage").find("span.previous").addClass("disabled");
                        }
                    }
                });

                $("#g_next").click(function (evt) {
                    if (!$("#g_next").hasClass("disabled")) {
                        var g_current_page = parseInt(self.g_current_page(), 10);
                        self.g_nextPage(g_current_page + 1);
                        self.g_current_page(self.g_nextPage());
                        $("#g_inputPage").val('Total Reg.: ' + self.g_lstTabla().length + ' - Pag. ' + self.g_current_page() + ' de ' + self.g_lastPage());

                        $("#g_divPage").find("span.first").removeClass("disabled");
                        $("#g_divPage").find("span.previous").removeClass("disabled");

                        if (self.g_current_page() == self.g_lastPage()) {
                            $("#g_divPage").find("span.last").addClass("disabled");
                            $("#g_divPage").find("span.next").addClass("disabled");
                        }
                    }
                });

                $("#g_inputPage").bind('focus mouseup', function (event) {
                    var g_current_page = parseInt(self.g_current_page(), 10);

                    if (event.type === 'focus') {
                        $(this).val(g_current_page).select();
                    }

                    if (event.type === 'mouseup') {
                        $(this).val(g_current_page).select();
                        return false;
                    }

                    if (self.g_current_page() > self.g_firstPage() && self.g_current_page() < self.g_lastPage()) {
                        g_allEvent();
                    }
                });

                $("#g_inputPage").bind('blur keydown', function (event) {
                    if (event.keyCode === 13 || event.type === 'blur') {
                        if (isNaN($(this).val()) || $(this).val() < self.g_firstPage() || $(this).val() > self.g_lastPage()) {
                            $(this).val('Total Reg.: ' + self.g_lstTabla().length + ' - Pag. ' + self.g_current_page() + ' de ' + self.g_lastPage());
                        }
                        else {
                            var g_current_page = parseInt($(this).val(), 10);
                            self.g_current_page(g_current_page);
                            $(this).val('Total Reg.: ' + self.g_lstTabla().length + ' - Pag. ' + self.g_current_page() + ' de ' + self.g_lastPage());

                            if (self.g_current_page() == self.g_firstPage() && self.g_current_page() != self.g_lastPage()) { g_firstEvent() };
                            if (self.g_current_page() == self.g_lastPage() && self.g_current_page() != self.g_firstPage()) { g_lastEvent() };
                        }

                        if (self.g_current_page() > self.g_firstPage() && self.g_current_page() < self.g_lastPage()) {
                            g_allEvent();
                        }
                    }

                });

                function g_unicEvent() {
                    $("#g_divPage").find("span.first").addClass("disabled");
                    $("#g_divPage").find("span.previous").addClass("disabled");
                    $("#g_divPage").find("span.last").addClass("disabled");
                    $("#g_divPage").find("span.next").addClass("disabled");
                }

                function g_firstEvent() {
                    $("#g_divPage").find("span.first").addClass("disabled");
                    $("#g_divPage").find("span.previous").addClass("disabled");
                    $("#g_divPage").find("span.last").removeClass("disabled");
                    $("#g_divPage").find("span.next").removeClass("disabled");
                }

                function g_lastEvent() {
                    $("#g_divPage").find("span.last").addClass("disabled");
                    $("#g_divPage").find("span.next").addClass("disabled");
                    $("#g_divPage").find("span.first").removeClass("disabled");
                    $("#g_divPage").find("span.previous").removeClass("disabled");
                }

                function g_allEvent() {
                    $("#g_divPage").find("span.first").removeClass("disabled");
                    $("#g_divPage").find("span.previous").removeClass("disabled");
                    $("#g_divPage").find("span.last").removeClass("disabled");
                    $("#g_divPage").find("span.next").removeClass("disabled");
                }

                function g_limpiarEvent() {
                    self.g_current_page(1);

                    if (!$("#g_divPage").hasClass("invisible")) { $("#g_divPage").addClass("invisible"); }
                    if (!$("#g_divPage").find("span.first").hasClass("disabled")) { $("#g_divPage").find("span.first").addClass("disabled"); }
                    if (!$("#g_divPage").find("span.previous").hasClass("disabled")) { $("#g_divPage").find("span.previous").addClass("disabled"); }
                    if (!$("#g_divPage").find("span.last").hasClass("disabled")) { $("#g_divPage").find("span.last").addClass("disabled"); }
                    if (!$("#g_divPage").find("span.next").hasClass("disabled")) {
                        $("#g_divPage").find("span.next").addClass("disabled");
                    }
                }

            };

            ko.observableArray.fn.filtered = function (query, column) {
                var self = this;

                var query = $.trim(query).toLowerCase();

                if (!query.length) return self;
                var filteredArray = ko.utils.arrayFilter(self(), function (item) {
                    var match = false;

                    if (column && item[column]) {
                        var value = item[column].toString().toLowerCase();
                        match = value.indexOf(query) != -1;
                    } else {                        
                        for (var key in item) {
                            var obj = item[key];
                            if (obj != null) {
                                var value = obj.toString().toLowerCase();
                                match = (value.indexOf(query) != -1) ? true : match;
                            }
                        }
                    }

                    return match;
                });

                return ko.observableArray(filteredArray);
            };
            
            let md_Modelo_01 = new xMi_Modelo_01();
            ko.cleanNode($("#Mi_Modelo_Principal").get(0));
            ko.applyBindings(md_Modelo_01, $('#Mi_Modelo_Principal').get(0));


            // Encabezado Principal: 
            var xMi_Modelo_02 = function (){
                var self = this;
                            
                // Recuperando los Registros para la Cuadricula Productos N2
                self.xReg_Total_Det = ko.observable(true); self.yReg_Total_Det = ko.observable(false); 
                self.Mis_Datos_Det = ko.observableArray([]);
                self.Cargar_Mis_Entradas_Det = async ( yID ) => {
                    if ((yID == null) || (yID == undefined)){
                        self.Mis_Datos_Det([]); self.xReg_Total_Det(true); self.yReg_Total_Det(false); 
                    } else {
                        $(".loader").fadeIn("slow");
                        let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_REG_ENTRADAS_PRODUCTOS_DET';
                        let Mis_Parametros = JSON.stringify({ xID: yID });

                        let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                        if (Mis_Registros.d.exito == false){
                            xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); self.Mis_Datos_Det([]); self.xReg_Total_Det(true); self.yReg_Total_Det(false); 
                        } else { 
                            self.Mis_Datos_Det($.parseJSON(Mis_Registros.d.Mensaje)); 
                            if (self.Mis_Datos_Det().length > 0){ self.xReg_Total_Det(false); self.yReg_Total_Det(true); } else { self.xReg_Total_Det(true); self.yReg_Total_Det(false); }
                        } 
                        $(".loader").fadeOut("slow");
                    }                    
                };
                
                // Botones del Encabezado...
                self.Agregar_Det = function () {
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 0) {
                        if (aPermisos.length > 0) {
                            if (aPermisos[0].INS == '0') {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }
                                        
                    if (parseInt(md_Modelo_01.ID_Estado()) != 1) {
                        xContenido = 'Debe de tener Seleccionado la condición de ALTA para poder Agregar un Registro...';
                        yMetodos[1](xContenido, "warning"); return false;
                    }

                                        
                    // Validando las Cantidades..
                    if ($('#Txt_Cantidad').val() == ''){
                        xContenido = 'Debe digitar la Cantidad de Entrada del Producto a Ingresar...';
                        yMetodos[1](xContenido, "warning"); return false;
                    }

                    if ($('#Txt_Precio').val() == ''){
                        xContenido = 'Debe digitar el Precio de Entrada del Producto a Ingresar...';
                        yMetodos[1](xContenido, "warning"); return false;
                    }

                    if (parseFloat($('#Txt_Cantidad').val()) < 0){
                        xContenido = 'La Cantidad de Entrada del Producto a Ingresar debe ser mayor o igual que Cero(0)...';
                        yMetodos[1](xContenido, "warning"); return false;
                    }

                    if (parseFloat($('#Txt_Precio').val()) < 0){
                        xContenido = 'El Precio de Entrada del Producto a Ingresar debe ser mayor o igual que Cero(0)...';
                        yMetodos[1](xContenido, "warning"); return false;
                    }

                    // Agregando los Elementos al Arreglo correspondiente...
                    var xI = self.Mis_Datos_Det().length;
                    
                    self.Mis_Datos_Det.push({
                        ID: xI,
                        ID_ARTICULO: xID_ARTICULO,
                        COD_ARTICULO: xCOD_ARTICULO,
                        DESC_ARTICULO: xDESC_ARTICULO,
                        ID_MONEDA: $('#Cmb_Moneda').val(),
                        DESC_MONEDA: $('#Cmb_Moneda option:selected').html(),
                        CANTIDAD: $('#Txt_Cantidad').val(),
                        COSTO: yMetodos[9](parseFloat($('#Txt_Precio').val().replace(',', '')), "2", ".", ","),
                        TOTAL: yMetodos[9]((parseFloat($('#Txt_Cantidad').val().replace(',', '')) * parseFloat($('#Txt_Precio').val().replace(',', ''))), "2", ".", ","),
                        VAL_CANTIDAD: $('#Txt_Cantidad').val().replace(',', ''),
                        VAL_MONTO: (parseFloat($('#Txt_Cantidad').val().replace(',', '')) * parseFloat($('#Txt_Precio').val().replace(',', ''))),
                    });

                    if (self.Mis_Datos_Det().length > 0){ self.xReg_Total_Det(false); self.yReg_Total_Det(true); } else { self.xReg_Total_Det(true); self.yReg_Total_Det(false); }

                    // Limpiando campos del Detalle...                    
                    $(".DetInputBox").each(function () {
                        $(this).prop('value', '')
                    });

                    $(".DetComboBox").each(function () {
                        $(this).prop('selectedIndex', 0)
                    });
                                                                        
                    xID_ARTICULO = 0; xCOD_ARTICULO = ''; xDESC_ARTICULO = ''; 
                    
                };
                
                //Seleccionando una Fila                
                self.selectRow_Det_Quitar = function(index, item){
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 0) {
                        if (aPermisos.length > 0) {
                            if (aPermisos[0].DEL == '0') {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }
                                        
                    // Quitando la Fila correspondiente
                    let indice = self.Mis_Datos_Det().findIndex((elemento, indice) => {
                        if (elemento.ID === index.ID) {
                            return true;
                        }
                    });
                    
                    self.Mis_Datos_Det.splice(indice, 1); 

                    if (self.Mis_Datos_Det().length > 0){ self.xReg_Total_Det(false); self.yReg_Total_Det(true); } else { self.xReg_Total_Det(true); self.yReg_Total_Det(false); }

                    xID_ARTICULO = 0; xCOD_ARTICULO = ''; xDESC_ARTICULO = ''; 
                    
                };
                
                self.selectRecord_Det = function(item, indice)
                {
                    self.g_Paginacion_Det().forEach(function(valor, index){
                        if(valor.color){
                            $('#' + (index + 1)).removeClass('MiColor')
                            valor.color = false;
                        }
                    })

                    $('#' + indice).addClass('MiColor')
                    item.color = true;
                };

                            
                // Totales
                self.TCantidad = ko.computed(function () {
                    var xResult = 0;

                    self.Mis_Datos_Det().forEach(function (i) {
                        if (i.VAL_CANTIDAD != undefined && i.VAL_CANTIDAD != '') {
                            xResult = xResult + parseFloat(i.VAL_CANTIDAD);
                        }
                    });
                                        
                    return yMetodos[10](xResult);
                });

                self.TMonto = ko.computed(function () {
                    var xResult = 0;

                    self.Mis_Datos_Det().forEach(function (i) {
                        if (i.VAL_MONTO != undefined && i.VAL_MONTO != '') {
                            xResult = xResult + parseFloat(i.VAL_MONTO);
                        }
                    });
                                        
                    return yMetodos[11](xResult);
                });

                                   

                //Paginación de la Cuadricula
                self.g_current_page_Det = ko.observable(1);
                self.search_Det = ko.observable('');

                self.g_nPagina_Det = ko.observable(1);
                self.g_nextPage_Det = ko.observable();
                self.g_nPorPagina_Det = ko.observable(5);
                self.g_firstPage_Det = ko.observable(1);
                self.g_previousPage_Det = ko.observable();

                self.g_lstTabla_Det = ko.observableArray([]);

                self.g_lastPage_Det = ko.computed(function () {
                    var dt = self.Mis_Datos_Det.filtered_Det(self.search_Det());
                    self.g_current_page_Det(1);
                    g_firstEvent_Det();
                    self.g_lstTabla_Det(ko.mapping.toJS(dt));
                    var div = self.g_lstTabla_Det().length / self.g_nPorPagina_Det();
                    var divFloor = Math.floor(div);
                    if (div > divFloor) {
                        div = divFloor + 1;
                    }

                    if (div == 1) {
                        g_unicEvent_Det();
                    }

                    return div;
                }, this);

                self.g_visible_pagination_Det = ko.computed(function () {
                    if (self.g_lstTabla_Det().length == 0) {
                        $("#g_divPage_Det").addClass("invisible");
                    }
                    else {
                        $("#g_divPage_Det").removeClass("invisible");
                    }
                }, this);

                self.g_Paginacion_Det = ko.computed(function () {
                    var page = (parseInt(self.g_current_page_Det()) * parseInt(self.g_nPorPagina_Det())) - parseInt(self.g_nPorPagina_Det());

                    $("#g_inputPage_Det").val('Total Reg.: ' + self.g_lstTabla_Det().length + ' - Pag. ' + self.g_current_page_Det() + ' de ' + self.g_lastPage_Det());

                    if (parseInt(self.g_current_page_Det(), 10) < parseInt(self.g_lastPage_Det(), 10)) {
                        $("#g_divPage_Det").find("span.last_Det").removeClass("disabled");
                        $("#g_divPage_Det").find("span.next_Det").removeClass("disabled");
                    }

                    return self.g_lstTabla_Det.slice(page, page + parseInt(self.g_nPorPagina_Det()));
                });

                $("#g_last_Det").click(function (evt) {
                    if (!$("#g_last_Det").hasClass("disabled")) {
                        self.g_current_page_Det(self.g_lastPage_Det());
                        $("#g_inputPage_Det").val('Total Reg.: ' + self.g_lstTabla_Det().length + ' - Pag. ' + self.g_current_page_Det() + ' de ' + self.g_lastPage_Det());
                        g_lastEvent_Det();
                    }
                });

                $("#g_first_Det").click(function (evt) {
                    if (!$("#g_first_Det").hasClass("disabled")) {
                        self.g_current_page_Det(self.g_firstPage_Det());
                        $("#g_inputPage_Det").val('Total Reg.: ' + self.g_lstTabla_Det().length + ' - Pag. ' + self.g_current_page_Det() + ' de ' + self.g_lastPage_Det());
                        g_firstEvent_Det();
                    }
                });

                $("#g_previous_Det").click(function (evt) {
                    if (!$("#g_previous_Det").hasClass("disabled")) {
                        var g_current_page = parseInt(self.g_current_page_Det(), 10);
                        self.g_previousPage_Det(g_current_page - 1);
                        self.g_current_page_Det(self.g_previousPage_Det());
                        $("#g_inputPage_Det").val('Total Reg.: ' + self.g_lstTabla_Det().length + ' - Pag. ' + self.g_current_page_Det() + ' de ' + self.g_lastPage_Det());

                        $("#g_divPage_Det").find("span.last_Det").removeClass("disabled");
                        $("#g_divPage_Det").find("span.next_Det").removeClass("disabled");

                        if (self.g_current_page_Det() == self.g_firstPage_Det()) {
                            $("#g_divPage_Det").find("span.first_Det").addClass("disabled");
                            $("#g_divPage_Det").find("span.previous_Det").addClass("disabled");
                        }
                    }
                });

                $("#g_next_Det").click(function (evt) {
                    if (!$("#g_next_Det").hasClass("disabled")) {
                        var g_current_page = parseInt(self.g_current_page_Det(), 10);
                        self.g_nextPage_Det(g_current_page + 1);
                        self.g_current_page_Det(self.g_nextPage_Det());
                        $("#g_inputPage_Det").val('Total Reg.: ' + self.g_lstTabla_Det().length + ' - Pag. ' + self.g_current_page_Det() + ' de ' + self.g_lastPage_Det());

                        $("#g_divPage_Det").find("span.first_Det").removeClass("disabled");
                        $("#g_divPage_Det").find("span.previous_Det").removeClass("disabled");

                        if (self.g_current_page_Det() == self.g_lastPage_Det()) {
                            $("#g_divPage_Det").find("span.last_Det").addClass("disabled");
                            $("#g_divPage_Det").find("span.next_Det").addClass("disabled");
                        }
                    }
                });

                $("#g_inputPage_Det").bind('focus mouseup', function (event) {
                    var g_current_page = parseInt(self.g_current_page_Det(), 10);

                    if (event.type === 'focus') {
                        $(this).val(g_current_page).select();
                    }

                    if (event.type === 'mouseup') {
                        $(this).val(g_current_page).select();
                        return false;
                    }

                    if (self.g_current_page_Det() > self.g_firstPage_Det() && self.g_current_page_Det() < self.g_lastPage_Det()) {
                        g_allEvent_Det();
                    }
                });

                $("#g_inputPage_Det").bind('blur keydown', function (event) {
                    if (event.keyCode === 13 || event.type === 'blur') {
                        if (isNaN($(this).val()) || $(this).val() < self.g_firstPage_Det() || $(this).val() > self.g_lastPage_Det()) {
                            $(this).val('Total Reg.: ' + self.g_lstTabla_Det().length + ' - Pag. ' + self.g_current_page_Det() + ' de ' + self.g_lastPage_Det());
                        }
                        else {
                            var g_current_page = parseInt($(this).val(), 10);
                            self.g_current_page_Det(g_current_page);
                            $(this).val('Total Reg.: ' + self.g_lstTabla_Det().length + ' - Pag. ' + self.g_current_page_Det() + ' de ' + self.g_lastPage_Det());

                            if (self.g_current_page_Det() == self.g_firstPage_Det() && self.g_current_page_Det() != self.g_lastPage_Det()) { g_firstEvent_Det() };
                            if (self.g_current_page_Det() == self.g_lastPage_Det() && self.g_current_page_Det() != self.g_firstPage_Det()) { g_lastEvent_Det() };
                        }

                        if (self.g_current_page_Det() > self.g_firstPage_Det() && self.g_current_page_Det() < self.g_lastPage_Det()) {
                            g_allEvent_Det();
                        }
                    }

                });

                function g_unicEvent_Det() {
                    $("#g_divPage_Det").find("span.first_Det").addClass("disabled");
                    $("#g_divPage_Det").find("span.previous_Det").addClass("disabled");
                    $("#g_divPage_Det").find("span.last_Det").addClass("disabled");
                    $("#g_divPage_Det").find("span.next_Det").addClass("disabled");
                }

                function g_firstEvent_Det() {
                    $("#g_divPage_Det").find("span.first_Det").addClass("disabled");
                    $("#g_divPage_Det").find("span.previous_Det").addClass("disabled");
                    $("#g_divPage_Det").find("span.last_Det").removeClass("disabled");
                    $("#g_divPage_Det").find("span.next_Det").removeClass("disabled");
                }

                function g_lastEvent_Det() {
                    $("#g_divPage_Det").find("span.last_Det").addClass("disabled");
                    $("#g_divPage_Det").find("span.next_Det").addClass("disabled");
                    $("#g_divPage_Det").find("span.first_Det").removeClass("disabled");
                    $("#g_divPage_Det").find("span.previous_Det").removeClass("disabled");
                }

                function g_allEvent_Det() {
                    $("#g_divPage_Det").find("span.first_Det").removeClass("disabled");
                    $("#g_divPage_Det").find("span.previous_Det").removeClass("disabled");
                    $("#g_divPage_Det").find("span.last_Det").removeClass("disabled");
                    $("#g_divPage_Det").find("span.next_Det").removeClass("disabled");
                }

                function g_limpiarEvent_Det() {
                    self.g_current_page_Det(1);

                    if (!$("#g_divPage_Det").hasClass("invisible")) { $("#g_divPage_Det").addClass("invisible"); }
                    if (!$("#g_divPage_Det").find("span.first_Det").hasClass("disabled")) { $("#g_divPage_Det").find("span.first_Det").addClass("disabled"); }
                    if (!$("#g_divPage_Det").find("span.previous_Det").hasClass("disabled")) { $("#g_divPage_Det").find("span.previous_Det").addClass("disabled"); }
                    if (!$("#g_divPage_Det").find("span.last_Det").hasClass("disabled")) { $("#g_divPage_Det").find("span.last_Det").addClass("disabled"); }
                    if (!$("#g_divPage_Det").find("span.next_Det").hasClass("disabled")) {
                        $("#g_divPage_Det").find("span.next_Det").addClass("disabled");
                    }
                }
                
            };

            ko.observableArray.fn.filtered_Det = function (query, column) {
                var self = this;

                var query = $.trim(query).toLowerCase();

                if (!query.length) return self;
                var filteredArray = ko.utils.arrayFilter(self(), function (item) {
                    var match = false;

                    if (column && item[column]) {
                        var value = item[column].toString().toLowerCase();
                        match = value.indexOf(query) != -1;
                    } else {                        
                        for (var key in item) {
                            var obj = item[key];
                            if (obj != null) {
                                var value = obj.toString().toLowerCase();
                                match = (value.indexOf(query) != -1) ? true : match;
                            }
                        }
                    }

                    return match;
                });

                return ko.observableArray(filteredArray);
            };
            
            let md_Modelo_02 = new xMi_Modelo_02();
            ko.cleanNode($("#Frm_DATOS").get(0));
            ko.applyBindings(md_Modelo_02, $('#Frm_DATOS').get(0));
                                                

            // Comportamiento de los Objetos
            $('#Txt_Cantidad').keypress(yMetodos[7]);
            $('#Txt_Precio').keypress(yMetodos[7]);
                       
            $('#Dtp_Fecha').bind('valueChanged', function (event) {
                if (xBand_Reg_Entradas == 1){
                    $("#Txt_Observaciones").val("ENTRADA DE ARTICULOS ( "  + moment($("#Dtp_Fecha").val()).format('DD/MM/YYYY') + " )"); 
                }
            });
                        

             //AutoComplete
             //Proveedor
            let source_01 = async (request, response) => {
                let Mi_url = "Frm_Metodos_WEB_Services.aspx/Listar_REG_PROVEEDORES_BUSQ";
                let Mis_Parametros = JSON.stringify({ xFiltro: request.term.toString().toUpperCase()  });

                let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                if (Mis_Registros.d.exito == false){
                    xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                } else { 
                    var oUbica = $.parseJSON(Mis_Registros.d.Mensaje);
                    response($.map(oUbica, function (item) {
                        return {
                            label: item.label,
                            value: item.value
                        };
                    }));
                }    
            };

            let focus_01 = function (event, ui) {
                $("#Txt_Proveedor").val(ui.item.label);
                xID_PROVEEDOR = ui.item.value;

                event.preventDefault();
            };

            let select_01 = function (event, ui) {
                $("#Txt_Proveedor").val($.trim((ui.item.label)));
                xID_PROVEEDOR = ui.item.value;

                event.preventDefault();
            };

            let change_01 = function (event, ui) {
                if (!ui.item) {
                    xID_PROVEEDOR = 0; 
                }

                event.preventDefault();
            };

            yMetodos[6]("Txt_Proveedor", source_01, focus_01, select_01, change_01)
            .autocomplete("instance")._renderItem = function (ul, item) {
                return $("<li></li>")
                        .append("<a><strong style='color:Navy;font-size:0.85em;font-weight: bold;'>" + item.label + "</strong>" + " " + item.value + "</a>")
                        .appendTo(ul);
            };

            $("#Txt_Proveedor").change(function (ui) {
                if (!ui.item) {
                    xID_PROVEEDOR = 0; 
                }
                
                event.preventDefault();
            });

            // Artículos...
            let source_02 = async (request, response) => {                
                let Mi_url = "Frm_Metodos_WEB_Services.aspx/Listar_REG_ARTICULOS_BUSQ";
                let Mis_Parametros = JSON.stringify({ xFiltro: request.term.toString().toUpperCase()  });

                let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                if (Mis_Registros.d.exito == false){
                    xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                } else { 
                    var oUbica = $.parseJSON(Mis_Registros.d.Mensaje);
                    response($.map(oUbica, function (item) {
                        return {
                            label: item.label,
                            value: item.value
                        };
                    }));
                }    
            };

            let focus_02 = function (event, ui) {
                $("#Txt_Desc_Producto").val(ui.item.label);
                xID_ARTICULO = ui.item.value;
                xCOD_ARTICULO = ui.item.label.split('|')[0]; xDESC_ARTICULO = ui.item.label.split('|')[1];
                                
                event.preventDefault();
            };

            let select_02 = function (event, ui) {
                $("#Txt_Desc_Producto").val($.trim((ui.item.label)));
                xID_ARTICULO = ui.item.value;
                xCOD_ARTICULO = ui.item.label.split('|')[0]; xDESC_ARTICULO = ui.item.label.split('|')[1];

                event.preventDefault();
            };

            let change_02 = function (event, ui) {
                if (!ui.item) {
                    xID_ARTICULO = 0; xCOD_ARTICULO = ''; xDESC_ARTICULO = '';
                }

                event.preventDefault();
            };

            yMetodos[6]("Txt_Desc_Producto", source_02, focus_02, select_02, change_02)
            .autocomplete("instance")._renderItem = function (ul, item) {
                return $("<li></li>")
                        .append("<a><strong style='color:Navy;font-size:0.85em;font-weight: bold;'>" + item.label + "</strong>" + " " + item.value + "</a>")
                        .appendTo(ul);
            };

            $("#Txt_Desc_Producto").change(function (ui) {
                if (!ui.item) {
                    xID_ARTICULO = 0; xCOD_ARTICULO = ''; xDESC_ARTICULO = '';
                }
            });
    
            //Proveedor Rpt
            let source_03 = async (request, response) => {
                let Mi_url = "Frm_Metodos_WEB_Services.aspx/Listar_REG_PROVEEDORES_BUSQ";
                let Mis_Parametros = JSON.stringify({ xFiltro: request.term.toString().toUpperCase()  });

                let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                if (Mis_Registros.d.exito == false){
                    xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                } else { 
                    var oUbica = $.parseJSON(Mis_Registros.d.Mensaje);
                    response($.map(oUbica, function (item) {
                        return {
                            label: item.label,
                            value: item.value
                        };
                    }));
                }    
            };

            let focus_03 = function (event, ui) {
                $("#Txt_Proveedor_Rpt").val(ui.item.label);
                xID_PROVEEDOR = ui.item.value;

                event.preventDefault();
            };

            let select_03 = function (event, ui) {
                $("#Txt_Proveedor_Rpt").val($.trim((ui.item.label)));
                xID_PROVEEDOR = ui.item.value;

                event.preventDefault();
            };

            let change_03 = function (event, ui) {
                if (!ui.item) {
                    xID_PROVEEDOR = 0; 
                }

                event.preventDefault();
            };

            yMetodos[6]("Txt_Proveedor_Rpt", source_03, focus_03, select_03, change_03)
            .autocomplete("instance")._renderItem = function (ul, item) {
                return $("<li></li>")
                        .append("<a><strong style='color:Navy;font-size:0.85em;font-weight: bold;'>" + item.label + "</strong>" + " " + item.value + "</a>")
                        .appendTo(ul);
            };

            $("#Txt_Proveedor_Rpt").change(function (ui) {
                if (!ui.item) {
                    xID_PROVEEDOR = 0; 
                }
                
                event.preventDefault();
            });


            // Productos Rpt
            let source_04 = async (request, response) => {
                let Mi_url = "Frm_Metodos_WEB_Services.aspx/Listar_REG_ARTICULOS_BUSQ";
                let Mis_Parametros = JSON.stringify({ xFiltro: request.term.toString().toUpperCase()  });

                let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                if (Mis_Registros.d.exito == false){
                    xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                } else { 
                    var oUbica = $.parseJSON(Mis_Registros.d.Mensaje);
                    response($.map(oUbica, function (item) {
                        return {
                            label: item.label,
                            value: item.value
                        };
                    }));
                }    
            };

            let focus_04 = function (event, ui) {
                $("#Txt_Producto_Rpt").val(ui.item.label);
                xID_ARTICULO = ui.item.value;
                
                event.preventDefault();
            };

            let select_04 = function (event, ui) {
                $("#Txt_Producto_Rpt").val($.trim((ui.item.label)));
                xID_ARTICULO = ui.item.value;
                
                event.preventDefault();
            };

            let change_04 = function (event, ui) {
                if (!ui.item) {
                    xID_ARTICULO = 0; 
                }

                event.preventDefault();
            };

            yMetodos[6]("Txt_Producto_Rpt", source_04, focus_04, select_04, change_04)
            .autocomplete("instance")._renderItem = function (ul, item) {
                return $("<li></li>")
                        .append("<a><strong style='color:Navy;font-size:0.85em;font-weight: bold;'>" + item.label + "</strong>" + " " + item.value + "</a>")
                        .appendTo(ul);
            };

            $("#Txt_Producto_Rpt").change(function (ui) {
                if (!ui.item) {
                    xID_ARTICULO = 0; 
                }
            });


            // Ventanas 
            $("#Frm_DATOS").dialog({
                autoOpen: false, width: (lastWidth * 0.85), height: (lastHeight * 0.75), modal: true, resizable: true, show: "slide", hide: "slide",
                dialogClass: "Estilos_Ventanas_Modales",
                position: "center",
                closeOnEscape: false,
                open: function () {                              
                    $(this).dialog('option', 'title', (xBand_Reg_Entradas == 1) ? 'AGREGAR REGISTRO NUEVO' : 'EDITAR REGISTRO EXISTENTE');

                    if (xBand_Reg_Entradas == 1) {
                        // Llamada de las Funciones Locales
                        yMetodos[5]("Cmb_Tipo_Procedencias", Mis_Tipos_Procedencias); yMetodos[5]("Cmb_Tipo_Movimientos", Mis_Tipos_Movimientos);
                        yMetodos[5]("Cmb_Tipo_Altas", Mis_Tipos_Altas); 

                        $(".EncInputBox").each(function () {
                            $(this).prop('value', '')
                        });

                        $(".EncComboBox").each(function () {
                            $(this).prop('selectedIndex', 0)
                        });

                        $(".DetInputBox").each(function () {
                            $(this).prop('value', '')
                        });

                        $(".DetComboBox").each(function () {
                            $(this).prop('selectedIndex', 0)
                        });
                                                
                        xID_REG_ENTRADAS = 0; xID_ARTICULO = 0; xID_PROVEEDOR = 0; xCOD_ARTICULO = ''; xDESC_ARTICULO = ''; 
                        $("#Dtp_Fecha").val(date_str); $("#Cmb_Moneda").val(1); 
                                                
                        $("#Txt_Observaciones").val("ALTA DE ENTRADA DE ARTICULOS ( " + $("#Dtp_Fecha").val() + " )"); 
                        
                        // Limpiando el Detalle
                        md_Modelo_02.Mis_Datos_Det([]);
                    } else { md_Modelo_02.Cargar_Mis_Entradas_Det(md_Modelo_01.ID_Periodo(), xID_REG_ENTRADAS);  }

                    setTimeout(function () {
                        $('#Cmb_Tipo_Movimiento').focus();
                    }, 420);
                },
                buttons: [
                 {
                     text: "GUARDAR",
                     click: function () {
                         // Datos del Encabezado
                         var xCONCEPTO = ($.trim($("#Txt_Concepto").val()).length == 0) ? "" : $.trim($("#Txt_Concepto").val()).toUpperCase();
                         var xOBS = ($.trim($("#Txt_Observaciones").val()).length == 0) ? "" : $.trim($("#Txt_Observaciones").val()).toUpperCase();
                         var xREFERENCIA = ($.trim($("#Txt_Referencia").val()).length == 0) ? "" : $.trim($("#Txt_Referencia").val()).toUpperCase();        
                         var xFECHA = yMetodos[8]($("#Dtp_Fecha").val());
                         
                         var xUSER = (yID_USER == 0) ? 1 : yID_EMPRESA_USER, xSESION = ySESION_USER;

                         // Validando Informacion...
                         let xModelo_Mensajes = {
                             xCONCEPTO: 'Debe de digitar el Concepto del Documento de Entrada de Productos...',
                             xOBS: 'Debe de digitar las Observaciones Adjuntas al Documento de Entrada de Productos...',
                             xREFERENCIA: 'Debe de digitar la Referencia adjunto al Documento de Entrada de Productos...'
                         };

                         let xModelo = {
                             xCONCEPTO: xCONCEPTO,
                             xOBS: xOBS,
                             xREFERENCIA: xREFERENCIA
                         };

                         let xModelo_Exc = ['xID'];
                                  
                         yMetodos[2](xModelo, xModelo_Mensajes, xModelo_Exc);
                 
                         if (xModelo.Mi_Mensaje){
                             yMetodos[1](xModelo.Mi_Mensaje, "warning"); return false;
                         }
                                                  
                         var uEncabezado = [];

                         uEncabezado.push({ ID: xID_REG_ENTRADAS, SUCURSAL: md_Modelo_01.ID_Sucursal(), FECHA: xFECHA, PROVEEDOR: xID_PROVEEDOR, TIPO_ENTRADA: $("#Cmb_Tipo_Movimiento").val(), ID_TC: xID_TC, CONCEPTO: xCONCEPTO, OBSERVACIONES: xOBS, REFERENCIA: xREFERENCIA, USER: xUSER });

                         var uDetalle = [];

                         for (var i = 0; i <= (md_Modelo_02.Mis_Datos_Det().length - 1) ; i++) {
                             uDetalle.push({ ID: md_Modelo_02.Mis_Datos_Det()[i].ID, PRODUCTO: md_Modelo_02.Mis_Datos_Det()[i].ID_PRODUCTO, MEDICION: md_Modelo_02.Mis_Datos_Det()[i].ID_MEDICION, PRESENTACION: md_Modelo_02.Mis_Datos_Det()[i].ID_PRESENTACION, PORC_IVA: md_Modelo_02.Mis_Datos_Det()[i].ID_PORC_IVA, PORC_DESCUENTO: md_Modelo_02.Mis_Datos_Det()[i].ID_PORC_DESCUENTO, ALMACENAMIENTO: md_Modelo_02.Mis_Datos_Det()[i].ID_ALMACENAMIENTO, CANTIDAD: md_Modelo_02.Mis_Datos_Det()[i].CANTIDAD, COSTO: md_Modelo_02.Mis_Datos_Det()[i].COSTO, FABRICACION: md_Modelo_02.Mis_Datos_Det()[i].FABRICACION, VENCE: md_Modelo_02.Mis_Datos_Det()[i].VENCE });
                         }

                         // Ejecutar la Opción...
                         let Guardar_Registros = async (lENC, lDET, lSESION) => {
                             let Mi_url = "Frm_Metodos_WEB_Services.aspx/Insertar_Actualizar_REG_ENTRADAS_PRODUCTOS";
                             let Mis_Parametros = JSON.stringify({ xENC: lENC, xDET: lDET, xSESION: lSESION  });

                             let response = await yMetodos[4]('¿Desea Guardar el Registro?...', Mi_url, Mis_Parametros);
                             if (response.d.exito == false){
                                 xContenido = response.d.Mensaje; yMetodos[1](xContenido, "error"); 
                             } else { 
                                 xContenido = 'Acción Realizada con Exito....'; yMetodos[1](xContenido, "success"); 
                                 xID_REG_ENTRADAS = parseFloat(response.d.Mensaje.split('|')[0]);

                                 if (xBand_Reg_Entradas == 1) {
                                     $(".EncInputBox").each(function () {
                                         $(this).prop('value', '')
                                     });

                                     $(".EncComboBox").each(function () {
                                         $(this).prop('selectedIndex', 0)
                                     });

                                     $(".DetInputBox").each(function () {
                                         $(this).prop('value', '')
                                     });

                                     $(".DetComboBox").each(function () {
                                         $(this).prop('selectedIndex', 0)
                                     });
                                 
                                     xID_REG_ENTRADAS = 0; xID_ARTICULO = 0; xID_PROVEEDOR = 0; xCOD_ARTICULO = ''; xDESC_ARTICULO = ''; 
                                     $("#Dtp_Fecha").val(date_str); $("#Cmb_Moneda").val(1); 
                                                
                                     $("#Txt_Observaciones").val("ALTA DE ENTRADA DE ARTICULOS ( " + $("#Dtp_Fecha").val() + " )"); 
                                     
                                     // Limpiando el Detalle
                                     md_Modelo_02.Mis_Datos_Det([]);

                                 } 

                                 setTimeout(function () {
                                     $('#Cmb_Tipo_Movimiento').focus();
                                 }, 420);
                             } 
                         };
                        Guardar_Registros(uEncabezado, uDetalle, xSESION);
                     },
                     class: "ui-button-spl2"
                 },
                {
                    text: "CERRAR",
                    click: function () {
                        $(this).dialog("close"); 

                        md_Modelo_01.Cargar_Mis_Entradas(md_Modelo_01.ID_Estado());
                    },
                    class: "ui-button-spl2"
                }]
            }).dialog({
                position: {
                    my: "center center",
                    at: "center center",
                    of: window
                }
            });

                                    
            $("#Frm_Baja").dialog({
                autoOpen: false, width: (lastWidth * 0.75), height: 'auto', modal: true, resizable: true, show: "slide", hide: "slide",
                dialogClass: "Estilos_Ventanas_Modales",
                position: "center",
                closeOnEscape: false,
                open: function () {
                    $(this).dialog('option', 'title', 'BAJA Y/O ANULACION AL DOCUMENTO DE ENTRADA Nº - ' + xCODIGO_ENTRADA);
                    
                    $("#Txt_Fecha_Baja").val(date_str); 
                    $("#Txt_Observacion_Baja").val('');
                },
                buttons: [
                {
                    text: "GUARDAR",
                    click: function () {
                        var xOBS = ($.trim($("#Txt_Observacion_Baja").val()).length == 0) ? "BAJA AL DOCUMENTO DE ENTRADA Nº : " + xCODIGO_ENTRADA : $.trim($("#Txt_Observacion_Baja").val()).toUpperCase();
                                    
                        var bFECHA_BAJA = yMetodos[7]($("#Txt_Fecha_Baja").val());
                        
                        var xUSER = yID_USER, xSESION = ySESION_USER;

                        // Ejecutando la Orden                       
                        let Baja_Registros = async (lID, lFECHA, lOBS, lUSER, lSESION) => {
                            let Mi_url = "Frm_Metodos_WEB_Services.aspx/Baja_REG_ENTRADAS_PRODUCTOS";
                            let Mis_Parametros = JSON.stringify({ xID: lID, xBAJA: lFECHA, xOBS: yOBS, xUSER: lUSER, xSESION: lSESION  });

                            let response = await yMetodos[4]('¿Desea dar de BAJA al Registro?...', Mi_url, Mis_Parametros);
                            if (response.d.exito == false){
                                xContenido = response.d.Mensaje; yMetodos[1](xContenido, "error"); 
                            } else { 
                                xContenido = 'Acción Realizada con Exito...'; yMetodos[1](xContenido, "success"); 

                                // Limpiando Campos...
                                xID_REG_ENTRADAS = 0;

                                $("#Txt_Fecha_Baja").val(date_str); 
                                $("#Txt_Observacion_Baja").val('');
                            } 
                        };
                        Baja_Registros(xID_REG_ENTRADAS, bFECHA_BAJA, xOBS, xUSER, xSESION);
                    },
                    class: "ui-button-spl2"
                },
                {
                    text: "CERRAR",
                    click: function () {
                        $(this).dialog("close"); 

                        md_Modelo_01.Cargar_Mis_Entradas(md_Modelo_01.ID_Estado());
                    },
                    class: "ui-button-spl2"
                }]
            }).dialog({
                position: {
                    my: "center center",
                    at: "center center",
                    of: window
                }
            });
                        
            $("#Frm_Impresiones").dialog({
                autoOpen: false, width: (lastWidth * 0.60), height: 'auto', modal: true, resizable: true, show: "slide", hide: "slide",
                dialogClass: "Estilos_Ventanas_Modales",
                position: "center",
                closeOnEscape: false,
                open: function () {
                    $(this).dialog('option', 'title', 'IMPRESIONES GENERALES');

                    $('#xOpt_01_Rpt').hide(); $('#xOpt_02_Rpt').hide();
                    $('#Txt_Proveedor_Rpt').val(''); $('#Txt_Producto_Rpt').val(''); xID_PROVEEDOR = 0; xID_ARTICULO = 0;

                    // Listando las Opciones del Reporte
                    async function Datos_Reportes(){
                        // Mis Periodos
                        let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_Reportes_04';
                        let Mis_Parametros = JSON.stringify({ });

                        if (xMODO_RPT == 0){
                            Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_Reportes_04';
                            Mis_Parametros = JSON.stringify({ });
                        } else if (xMODO_RPT == 1){
                            Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_Reportes_01';
                            Mis_Parametros = JSON.stringify({ xID: 11 });
                        }
                        
                        let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                        if (Mis_Registros.d.exito == false){
                            xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                        } else { 
                            yMetodos[5]("Cmb_Informes", $.parseJSON(Mis_Registros.d.Mensaje));
                        }                        
                    };
                    Datos_Reportes();
                },
                buttons: [
                {
                    text: "IMPRIMIR",
                    click: function () {
                        // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                        xContenido = '¿Desea Imprimir?...';
                        alertify.confirm(xTitulo, '<p style="color:navy;"><strong>' + xContenido + '</strong></p>',
                            function () {
                                async function Mi_Reportes(){
                                    var xTipo_Rpt = $('#Cmb_Tipo_Rpt').val();

                                    // Llenando los Parametros
                                    var xParametros = [];
                                    xParametros.push({ ID: 'xNo_Reporte', DESCRIPCION: $("#Cmb_Informes").val() });
                                    xParametros.push({ ID: 'xTitulo_01', DESCRIPCION: mEMPRESA });
                                    xParametros.push({ ID: 'xTitulo_02', DESCRIPCION: mDIRECCION });
                                    xParametros.push({ ID: 'xTitulo_03', DESCRIPCION: mDEPARTAMENTO });
                                    xParametros.push({ ID: 'xTitulo_04', DESCRIPCION: $("#Cmb_Informes option:selected").html() });
                                    xParametros.push({ ID: 'xTitulo_05', DESCRIPCION: yLog_User });
                                    xParametros.push({ ID: 'xTitulo_06', DESCRIPCION: (md_Modelo_01.ID_Periodo_Activo() == md_Modelo_01.ID_Periodo()) ? 0 : md_Modelo_01.ID_Periodo() });

                                    if (xMODO_RPT == 0){
                                        xParametros.push({ ID: 'xTitulo_07', DESCRIPCION: md_Modelo_01.ID_Estado() });
                                        xParametros.push({ ID: 'xTitulo_08', DESCRIPCION: md_Modelo_01.ID_Sucursal() });

                                        if ($("#Cmb_Informes").val() == 10){
                                            xParametros.push({ ID: 'xTitulo_09', DESCRIPCION: md_Modelo_01.lst_Sucursales().find(x => x.ID == md_Modelo_01.ID_Sucursal()).DESCRIPCION });
                                            xParametros.push({ ID: 'xTitulo_10', DESCRIPCION: md_Modelo_01.lst_Estados().find(x => x.ID == md_Modelo_01.ID_Estado()).DESCRIPCION });
                                            xParametros.push({ ID: 'xTitulo_11', DESCRIPCION: xTipo_Rpt });
                                        } else if ($("#Cmb_Informes").val() == 12){
                                            if (xID_PROVEEDOR == 0){
                                                xContenido = 'No ha Seleccionado al Proveedor...';
                                                yMetodos[6](xContenido, "warning"); return false;
                                            }

                                            xParametros.push({ ID: 'xTitulo_09', DESCRIPCION: xID_PROVEEDOR });
                                            xParametros.push({ ID: 'xTitulo_10', DESCRIPCION: md_Modelo_01.lst_Sucursales().find(x => x.ID == md_Modelo_01.ID_Sucursal()).DESCRIPCION });
                                            xParametros.push({ ID: 'xTitulo_11', DESCRIPCION: md_Modelo_01.lst_Estados().find(x => x.ID == md_Modelo_01.ID_Estado()).DESCRIPCION });
                                            xParametros.push({ ID: 'xTitulo_12', DESCRIPCION: xTipo_Rpt });
                                        } else if ($("#Cmb_Informes").val() == 13){
                                            if (xID_PRODUCTO == 0){
                                                xContenido = 'No ha Seleccionado al Producto...';
                                                yMetodos[6](xContenido, "warning"); return false;
                                            }

                                            xParametros.push({ ID: 'xTitulo_09', DESCRIPCION: xID_PRODUCTO });
                                            xParametros.push({ ID: 'xTitulo_10', DESCRIPCION: md_Modelo_01.lst_Sucursales().find(x => x.ID == md_Modelo_01.ID_Sucursal()).DESCRIPCION });
                                            xParametros.push({ ID: 'xTitulo_11', DESCRIPCION: md_Modelo_01.lst_Estados().find(x => x.ID == md_Modelo_01.ID_Estado()).DESCRIPCION });
                                            xParametros.push({ ID: 'xTitulo_12', DESCRIPCION: xTipo_Rpt });
                                        }
                                    } else if (xMODO_RPT == 1){
                                        xParametros.push({ ID: 'xTitulo_07', DESCRIPCION: xID_REG_ENTRADAS });
                                        xParametros.push({ ID: 'xTitulo_08', DESCRIPCION: xTipo_Rpt });
                                    }


                                    // Mis Periodos
                                    let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Cadena_Encryptar';
                                    let Mis_Parametros = JSON.stringify({ Parametros: xParametros });

                                    let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                                    if (Mis_Registros.d.exito == false){
                                        xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                                    } else { 
                                        var xEncriptado = JSON.stringify(Mis_Registros.d.Mensaje).substring(1, JSON.stringify(Mis_Registros.d.Mensaje).length - 1);

                                        var url = mREF + "?data=" + xEncriptado;
                                        window.open(url, '_Blank');
                                    }                        
                                };
                                Mi_Reportes();
                            },
                            function () {
                                xContenido = 'Acción Cancelada con Exito...'; yMetodos[1](xContenido, "success"); 
                            }
                        ).setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'labels': { ok: 'SI', cancel: 'NO' } }).show();

                    },
                    class: "ui-button-spl2"
                },
                {
                    text: "CERRAR",
                    click: function () {
                        $(this).dialog("close");

                    },
                    class: "ui-button-spl2"
                }]
            }).dialog({
                position: {
                    my: "center center",
                    at: "center center",
                    of: window
                }
            });
            
        } catch (ex) { yMetodos[1](ex.message, "error"); }       

    }).catch(response => { yMetodos[1](response, "error") });
});


// Funcion de Configuracion Inicial
function Configuracion_Inicial() {
    // Evitar ir atras...
    if (history.forward(1)) {
        location.replace(history.forward(1));
    }

    lastHeight = $(window).height(); lastWidth = $(window).width();
    $(window).resize(function () {
        lastHeight = $(window).height(); lastWidth = $(window).width();
    });

    $(window).resize();

    // Poner el Foco en la opcion del Menu Elegido
    $("#Opt_02").click();
    $("#Opt_02_05").css({ "background-color": "#F4FA58" });

    yTipo_User = $("#ROL_USER").val(); yUser = $("#NomUser").text(); yLog_User = $("#LOG_USER").val(); yID_EMPRESA_USER = parseFloat($("#ID_EMPRESA_USER").val());
    yID_USER = parseFloat($("#ID_USER").val()); yID_ROL_USER = parseFloat($("#ID_ROL_USER").val()); ySESION_USER = parseFloat($("#SESION_USER").val()); yID_PERIODO_USER = parseFloat($("#ID_PERIODO_USER").val());

    aCod_Opt = "Opt_02_05"; 
    if (yID_USER > 1) {
        Permisos_Usuario(yID_USER, yID_ROL_USER, aCod_Opt);
    }


    // Encabezado
    $("#Cmd_Nuevo").button({ icons: { primary: 'ui-icon-gear' } });
    $("#Cmd_Nuevo").find(".ui-icon").css({ "background-image": "url('css/images/operaciones/new.png')", "background-position": "0" });
    $("#Cmd_Imprimir").button({ icons: { primary: 'ui-icon-gear' } });
    $("#Cmd_Imprimir").find(".ui-icon").css({ "background-image": "url('css/images/operaciones/imprimir.png')", "background-position": "0" });

    $("#Cmd_Agregar_Det").button({ icons: { primary: 'ui-icon-gear' } });
    $("#Cmd_Agregar_Det").find(".ui-icon").css({ "background-image": "url('css/images/operaciones/agrega_detalle.png')", "background-position": "0" });
    
};

function Comportamiento_Objetos() {
    // Comportamiento de los Objetos
    // Encabezado
    $("#Dtp_Fecha").jqxDateTimeInput({ width: '100%', height: '30px', culture: 'es-ES', dropDownVerticalAlignment: "bottom", template: "primary", animationType: 'slide', formatString: 'dd/MM/yyyy', theme: 'arctic', textAlign: 'center' });
    $("#Txt_Fecha_Baja").jqxDateTimeInput({ width: '100%', height: '30px', culture: 'es-ES', dropDownVerticalAlignment: "bottom", template: "primary", animationType: 'slide', formatString: 'dd/MM/yyyy', theme: 'arctic', textAlign: 'center' });
        
    $('#Cmb_Tipo_Movimiento').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Referencia').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Referencia').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Proveedor').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Proveedor').keypress(function (event) {
        if (event.which == 13) {
            $('#Cmb_Moneda').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Cmb_Moneda').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Concepto').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Concepto').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Observaciones').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });
      
    $('#Txt_Observaciones').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Desc_Producto').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Desc_Producto').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Cantidad').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });
                
    $('#Txt_Cantidad').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Precio').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });
        
    $('#Txt_Precio').keypress(function (event) {
        if (event.which == 13) {
            $('#Cmd_Agregar_Det').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    

    // Parametro del Reporte...
    $('#Cmb_Informes').change(function (event) {
        var xValor = $('#Cmb_Informes').val(); // Valor del ID o VALUE
        var xTexto = $("#Cmb_Informes option:selected").html(); // Valor del Texto Seleccionado

        $('#Txt_Proveedor_Rpt').val(''); $('#Txt_Producto_Rpt').val(''); xID_PROVEEDOR = 0; xID_ARTICULO = 0;

        if (xValor == 10){
            $('#xOpt_01_Rpt').hide(); $('#xOpt_02_Rpt').hide(); 
        } else if (xValor == 11){
            $('#xOpt_01_Rpt').hide(); $('#xOpt_02_Rpt').hide(); 
        } else if (xValor == 12){
            $('#xOpt_01_Rpt').show(); $('#xOpt_02_Rpt').hide(); 
        } else if (xValor == 13){
            $('#xOpt_01_Rpt').hide(); $('#xOpt_02_Rpt').show(); 
        }
    });
};

