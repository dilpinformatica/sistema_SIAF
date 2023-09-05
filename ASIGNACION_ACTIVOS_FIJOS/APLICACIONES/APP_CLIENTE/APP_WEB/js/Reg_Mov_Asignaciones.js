// Variable Global
var xUbica = "", xElem = "", yMetodos = [], xSesion_Prueba = "", yUser = "", xBand_Reg_Asignacion = 0, xID_REG_ASIGNACION = 0, xID_EMPLEADO = 0, Mis_Tipos_Movimientos = [],
    xID_ARTICULO = 0, xCOD_ARTICULO = '', xCODIGO_ASIGNACION = "", xMODO_RPT = 0, Mis_Tipos_Altas = [], xSERIE_ARTICULO = '', xMODELO_ARTICULO = '', xMARCA_ARTICULO = '', 
    xCOLOR_ARTICULO = '', xPROCEDENCIA_ARTICULO = '', xID_TIPO_MOVIMIENTO = 0,  Mis_Datos_Copy = [];

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
                let lstObs = ['ID_Estado', 'xReg_Total_Enc', 'yReg_Total_Enc', 'g_current_page', 'search', 'g_nPagina', 'g_nextPage', 'g_nPorPagina', 'g_firstPage', 'g_previousPage', 'ID_Paginas'];
                let lstObs_Arrays = ['Mis_Datos', 'g_lstTabla', 'lst_Estados', 'lst_Paginas'];

                yMetodos[0](self, lstObs); yMetodos[0](self, lstObs_Arrays, true);

                self.lst_Estados([
                    { ID: -1, DESCRIPCION: "TODOS" },
                    { ID: 0, DESCRIPCION: "BAJA" },
                    { ID: 1, DESCRIPCION: "ALTA" }
                ]);

                self.lst_Paginas([
                    { ID: 1, DESCRIPCION: "5" },
                    { ID: 2, DESCRIPCION: "10" },
                    { ID: 3, DESCRIPCION: "15" },
                    { ID: 4, DESCRIPCION: "20" },
                    { ID: 5, DESCRIPCION: "25" },
                    { ID: 6, DESCRIPCION: "30" }
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
                    xBand_Reg_Asignacion = 1; xID_REG_ASIGNACION = 0;
                    
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
                
                    // Tipos de Movimiento
                    let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_CAT_TIPO_MOVIMIENTOS_AFECTABLE';
                    let Mis_Parametros = JSON.stringify({ });

                    let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                    if (Mis_Registros.d.exito == false){
                        xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                    } else { Mis_Tipos_Movimientos = $.parseJSON(Mis_Registros.d.Mensaje); } 
                                    
                    
                    $(".loader").fadeOut("slow");
                };
                self.Datos_Encabezados();

                // Recuperando los Registros para la Cuadricula Principal
                self.ID_Estado(1); 
                self.Cargar_Mis_Asignaciones_ENC = async ( yESTADO ) => {
                    if ((yESTADO == null) || (yESTADO == undefined)){
                        self.Mis_Datos([]); self.xReg_Total_Enc(true); self.yReg_Total_Enc(false); 
                    } else {
                        $(".loader").fadeIn("slow");
                        let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_REG_ASIGNACIONES_ENC';
                        let Mis_Parametros = JSON.stringify({ xEstado: yESTADO });

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
                self.Cargar_Mis_Asignaciones_ENC(self.ID_Estado());   

                self.load_Datos_Asignaciones_ENC = () => {
                    if ((self.ID_Estado() != null) || (self.ID_Estado() != undefined)){
                        self.Cargar_Mis_Asignaciones_ENC(self.ID_Estado());                        
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
                    yMetodos[5]("Cmb_Tipo_Movimientos", Mis_Tipos_Movimientos);
                    
                    xID_REG_ASIGNACION = parseFloat(item.ID);

                    $("#Dtp_Fecha").val(item.FECHA); $("#Cmb_Tipo_Movimientos").val(parseInt(item.ID_TIPO_MOVIMIENTO)); 
                    $("#Txt_Empleados").val(item.EMPLEADO); xID_EMPLEADO = parseInt(item.ID_EMPLEADO);
                    $("#Txt_Concepto").val(item.CONCEPTO); xID_TIPO_MOVIMIENTO = parseInt(item.ID_TIPO_MOVIMIENTO);
                    
                    
                    // Se Visualiza el DIV de la Gestión
                    xBand_Reg_Asignacion = 2;
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
                    xID_REG_ASIGNACION = parseFloat(item.ID); xCODIGO_ASIGNACION = item.CODIGO;

                    $('#Frm_Baja').dialog('open');
                };

                self.selectRow_Imprimir = function(item){
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 0) {
                        if (aPermisos.length > 0) {
                            if (aPermisos[0].IMP == '0') {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }
                                                                                    
                    // Se recuperan los Datos...
                    xID_REG_ASIGNACION = parseFloat(item.ID); 

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
                        let Mi_url = "Frm_Metodos_WEB_Services.aspx/Reactivar_REG_ASIGNACIONES";
                        let Mis_Parametros = JSON.stringify({ xID: lID, xUSER: lUSER, xSESION: lSESION  });

                        let response = await yMetodos[4]('¿Desea REACTIVAR al Registro actual?...', Mi_url, Mis_Parametros);
                        if (response.d.exito == false){
                            xContenido = response.d.Mensaje; yMetodos[1](xContenido, "error"); 
                        } else { 
                            xContenido = 'Acción Realizada con Exito...'; yMetodos[1](xContenido, "success"); 
                            self.ID_Estado(1); self.Cargar_Mis_Asignaciones_ENC(self.ID_Estado());
                        } 
                    };
                    Reactivar_Registros(parseFloat(item.ID), yID_USER, ySESION_USER);
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
                        if (i.CANTIDAD != undefined && i.CANTIDAD != '') {
                            xResult = xResult + parseFloat(i.CANTIDAD);
                        }
                    });
                                        
                    return yMetodos[10](xResult);
                });

                                                 
                
                //Paginación de la Cuadricula
                self.ID_Paginas(3); self.g_nPorPagina(parseInt(self.lst_Paginas().find(x => x.ID == 3).DESCRIPCION));
                self.ID_Paginas.subscribe((value) => {
                    if (value != null) {
                        self.g_nPorPagina(parseInt(self.lst_Paginas().find(x => x.ID == value).DESCRIPCION));
                    }
                });

                self.g_current_page(1); self.search(''); self.g_nPagina(1); self.g_firstPage(1);
                
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


            // Detalle: 
            var xMi_Modelo_02 = function (){
                var self = this;
                            
                // Recuperando los Registros para la Cuadricula Productos N2
                self.xReg_Total_Det = ko.observable(true); self.yReg_Total_Det = ko.observable(false); 
                self.Mis_Datos_Det = ko.observableArray([]);
                self.Cargar_Mis_Asignaciones_Det = async ( yID ) => {
                    if ((yID == null) || (yID == undefined)){
                        self.Mis_Datos_Det([]); self.xReg_Total_Det(true); self.yReg_Total_Det(false); 
                    } else {
                        $(".loader").fadeIn("slow");
                        let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_REG_ASIGNACIONES_DET';
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
                    if ($('#Txt_Costo').val() == ''){
                        xContenido = 'Debe digitar el Precio o Costo del Artículo a Ingresar...';
                        yMetodos[1](xContenido, "warning"); return false;
                    }

                    if (parseFloat($('#Txt_Costo').val()) < 0){
                        xContenido = 'El Precio o Costo del Artículo a Ingresar debe ser mayor o igual que Cero(0)...';
                        yMetodos[1](xContenido, "warning"); return false;
                    }

                    
                    // Agregando los Elementos al Arreglo correspondiente...
                    var xI = self.Mis_Datos_Det().length;
                    
                    self.Mis_Datos_Det.push({
                        ID: xI,
                        ID_ARTICULO: xID_ARTICULO,
                        COD_ARTICULO: xCOD_ARTICULO,
                        DESC_ARTICULO: $('#Txt_Desc_Articulos').val(),
                        MARCA_ARTICULO: xMARCA_ARTICULO,
                        MODELO_ARTICULO: xMODELO_ARTICULO,
                        COLOR_ARTICULO: xCOLOR_ARTICULO,
                        SERIE_ARTICULO: xSERIE_ARTICULO,
                        PROCEDENCIA_ARTICULO: xPROCEDENCIA_ARTICULO,
                        COSTO: $('#Txt_Costo').val()
                    });

                    if (self.Mis_Datos_Det().length > 0){ self.xReg_Total_Det(false); self.yReg_Total_Det(true); } else { self.xReg_Total_Det(true); self.yReg_Total_Det(false); }

                    // Limpiando campos del Detalle...                    
                    $(".DetInputBox").each(function () {
                        $(this).prop('value', '')
                    });
                                                                                                                
                    xID_ARTICULO = 0; xCOD_ARTICULO = ''; xSERIE_ARTICULO = ''; 
                    xMODELO_ARTICULO = ''; xMARCA_ARTICULO = ''; xCOLOR_ARTICULO = ''; xPROCEDENCIA_ARTICULO = '';
                    
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

                    xID_ARTICULO = 0; xCOD_ARTICULO = ''; xSERIE_ARTICULO = ''; 
                    xMODELO_ARTICULO = ''; xMARCA_ARTICULO = ''; xCOLOR_ARTICULO = ''; xPROCEDENCIA_ARTICULO = '';
                    
                };
                
                self.Listar_Empleados_Det = function(index, item){

                    $('#Frm_Empleados').dialog('open');   
                };

                self.Listar_Articulos_Det = function(index, item){

                    $('#Frm_Articulos').dialog('open');   
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
                                                


            // Empleados: 
            var xMi_Modelo_03 = function (){
                var self = this;
                            
                // Recuperando los Registros para la Cuadricula Productos N2
                self.xReg_Total_Emp_Det = ko.observable(true);  
                self.Mis_Datos_Emp_Det = ko.observableArray([]);
                self.Cargar_Mis_Empleados_Det = async ( ) => {
                    let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_REG_EMPLEADOS_BUSQ';
                    let Mis_Parametros = JSON.stringify({ });

                    let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                    if (Mis_Registros.d.exito == false){
                        xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); self.Mis_Datos_Emp_Det([]); self.xReg_Total_Emp_Det(true); 
                    } else { 
                        self.Mis_Datos_Emp_Det($.parseJSON(Mis_Registros.d.Mensaje)); 
                        if (self.Mis_Datos_Emp_Det().length > 0){ self.xReg_Total_Emp_Det(false); } else { self.xReg_Total_Emp_Det(true); }
                    } 
                };
                

                //Seleccionando una Fila
                self.selectRow_Emp_Det = function(item){
                                        
                    $("#Txt_Empleados").val(item.NOMBRE); xID_EMPLEADO = parseInt(item.ID);
                    
                    $("#Frm_Empleados").dialog("close"); 
                };

                                
                //Paginación de la Cuadricula
                self.g_current_page_Emp_Det = ko.observable(1);
                self.search_Emp_Det = ko.observable('');

                self.g_nPagina_Emp_Det = ko.observable(1);
                self.g_nextPage_Emp_Det = ko.observable();
                self.g_nPorPagina_Emp_Det = ko.observable(5);
                self.g_firstPage_Emp_Det = ko.observable(1);
                self.g_previousPage_Emp_Det = ko.observable();

                self.g_lstTabla_Emp_Det = ko.observableArray([]);

                self.g_lastPage_Emp_Det = ko.computed(function () {
                    var dt = self.Mis_Datos_Emp_Det.filtered_Det(self.search_Emp_Det());
                    self.g_current_page_Emp_Det(1);
                    g_firstEvent_Emp_Det();
                    self.g_lstTabla_Emp_Det(ko.mapping.toJS(dt));
                    var div = self.g_lstTabla_Emp_Det().length / self.g_nPorPagina_Emp_Det();
                    var divFloor = Math.floor(div);
                    if (div > divFloor) {
                        div = divFloor + 1;
                    }

                    if (div == 1) {
                        g_unicEvent_Emp_Det();
                    }

                    return div;
                }, this);

                self.g_visible_pagination_Emp_Det = ko.computed(function () {
                    if (self.g_lstTabla_Emp_Det().length == 0) {
                        $("#g_divPage_Emp_Det").addClass("invisible");
                    }
                    else {
                        $("#g_divPage_Emp_Det").removeClass("invisible");
                    }
                }, this);

                self.g_Paginacion_Emp_Det = ko.computed(function () {
                    var page = (parseInt(self.g_current_page_Emp_Det()) * parseInt(self.g_nPorPagina_Emp_Det())) - parseInt(self.g_nPorPagina_Emp_Det());

                    $("#g_inputPage_Emp_Det").val('Total Reg.: ' + self.g_lstTabla_Emp_Det().length + ' - Pag. ' + self.g_current_page_Emp_Det() + ' de ' + self.g_lastPage_Emp_Det());

                    if (parseInt(self.g_current_page_Emp_Det(), 10) < parseInt(self.g_lastPage_Emp_Det(), 10)) {
                        $("#g_divPage_Emp_Det").find("span.last_Emp_Det").removeClass("disabled");
                        $("#g_divPage_Emp_Det").find("span.next_Emp_Det").removeClass("disabled");
                    }

                    return self.g_lstTabla_Emp_Det.slice(page, page + parseInt(self.g_nPorPagina_Emp_Det()));
                });

                $("#g_last_Emp_Det").click(function (evt) {
                    if (!$("#g_last_Emp_Det").hasClass("disabled")) {
                        self.g_current_page_Emp_Det(self.g_lastPage_Emp_Det());
                        $("#g_inputPage_Emp_Det").val('Total Reg.: ' + self.g_lstTabla_Emp_Det().length + ' - Pag. ' + self.g_current_page_Emp_Det() + ' de ' + self.g_lastPage_Emp_Det());
                        g_lastEvent_Emp_Det();
                    }
                });

                $("#g_first_Emp_Det").click(function (evt) {
                    if (!$("#g_first_Emp_Det").hasClass("disabled")) {
                        self.g_current_page_Emp_Det(self.g_firstPage_Emp_Det());
                        $("#g_inputPage_Emp_Det").val('Total Reg.: ' + self.g_lstTabla_Emp_Det().length + ' - Pag. ' + self.g_current_page_Emp_Det() + ' de ' + self.g_lastPage_Emp_Det());
                        g_firstEvent_Emp_Det();
                    }
                });

                $("#g_previous_Emp_Det").click(function (evt) {
                    if (!$("#g_previous_Emp_Det").hasClass("disabled")) {
                        var g_current_page = parseInt(self.g_current_page_Emp_Det(), 10);
                        self.g_previousPage_Emp_Det(g_current_page - 1);
                        self.g_current_page_Emp_Det(self.g_previousPage_Emp_Det());
                        $("#g_inputPage_Emp_Det").val('Total Reg.: ' + self.g_lstTabla_Emp_Det().length + ' - Pag. ' + self.g_current_page_Emp_Det() + ' de ' + self.g_lastPage_Emp_Det());

                        $("#g_divPage_Emp_Det").find("span.last_Emp_Det").removeClass("disabled");
                        $("#g_divPage_Emp_Det").find("span.next_Emp_Det").removeClass("disabled");

                        if (self.g_current_page_Emp_Det() == self.g_firstPage_Emp_Det()) {
                            $("#g_divPage_Emp_Det").find("span.first_Emp_Det").addClass("disabled");
                            $("#g_divPage_Emp_Det").find("span.previous_Emp_Det").addClass("disabled");
                        }
                    }
                });

                $("#g_next_Emp_Det").click(function (evt) {
                    if (!$("#g_next_Emp_Det").hasClass("disabled")) {
                        var g_current_page = parseInt(self.g_current_page_Emp_Det(), 10);
                        self.g_nextPage_Emp_Det(g_current_page + 1);
                        self.g_current_page_Emp_Det(self.g_nextPage_Emp_Det());
                        $("#g_inputPage_Emp_Det").val('Total Reg.: ' + self.g_lstTabla_Emp_Det().length + ' - Pag. ' + self.g_current_page_Emp_Det() + ' de ' + self.g_lastPage_Emp_Det());

                        $("#g_divPage_Emp_Det").find("span.first_Emp_Det").removeClass("disabled");
                        $("#g_divPage_Emp_Det").find("span.previous_Emp_Det").removeClass("disabled");

                        if (self.g_current_page_Emp_Det() == self.g_lastPage_Emp_Det()) {
                            $("#g_divPage_Emp_Det").find("span.last_Emp_Det").addClass("disabled");
                            $("#g_divPage_Emp_Det").find("span.next_Emp_Det").addClass("disabled");
                        }
                    }
                });

                $("#g_inputPage_Emp_Det").bind('focus mouseup', function (event) {
                    var g_current_page = parseInt(self.g_current_page_Emp_Det(), 10);

                    if (event.type === 'focus') {
                        $(this).val(g_current_page).select();
                    }

                    if (event.type === 'mouseup') {
                        $(this).val(g_current_page).select();
                        return false;
                    }

                    if (self.g_current_page_Emp_Det() > self.g_firstPage_Emp_Det() && self.g_current_page_Emp_Det() < self.g_lastPage_Emp_Det()) {
                        g_allEvent_Emp_Det();
                    }
                });

                $("#g_inputPage_Emp_Det").bind('blur keydown', function (event) {
                    if (event.keyCode === 13 || event.type === 'blur') {
                        if (isNaN($(this).val()) || $(this).val() < self.g_firstPage_Emp_Det() || $(this).val() > self.g_lastPage_Emp_Det()) {
                            $(this).val('Total Reg.: ' + self.g_lstTabla_Emp_Det().length + ' - Pag. ' + self.g_current_page_Emp_Det() + ' de ' + self.g_lastPage_Emp_Det());
                        }
                        else {
                            var g_current_page = parseInt($(this).val(), 10);
                            self.g_current_page_Emp_Det(g_current_page);
                            $(this).val('Total Reg.: ' + self.g_lstTabla_Emp_Det().length + ' - Pag. ' + self.g_current_page_Emp_Det() + ' de ' + self.g_lastPage_Emp_Det());

                            if (self.g_current_page_Emp_Det() == self.g_firstPage_Emp_Det() && self.g_current_page_Emp_Det() != self.g_lastPage_Emp_Det()) { g_firstEvent_Emp_Det() };
                            if (self.g_current_page_Emp_Det() == self.g_lastPage_Emp_Det() && self.g_current_page_Emp_Det() != self.g_firstPage_Emp_Det()) { g_lastEvent_Emp_Det() };
                        }

                        if (self.g_current_page_Emp_Det() > self.g_firstPage_Emp_Det() && self.g_current_page_Emp_Det() < self.g_lastPage_Emp_Det()) {
                            g_allEvent_Emp_Det();
                        }
                    }

                });

                function g_unicEvent_Emp_Det() {
                    $("#g_divPage_Emp_Det").find("span.first_Emp_Det").addClass("disabled");
                    $("#g_divPage_Emp_Det").find("span.previous_Emp_Det").addClass("disabled");
                    $("#g_divPage_Emp_Det").find("span.last_Emp_Det").addClass("disabled");
                    $("#g_divPage_Emp_Det").find("span.next_Emp_Det").addClass("disabled");
                }

                function g_firstEvent_Emp_Det() {
                    $("#g_divPage_Emp_Det").find("span.first_Emp_Det").addClass("disabled");
                    $("#g_divPage_Emp_Det").find("span.previous_Emp_Det").addClass("disabled");
                    $("#g_divPage_Emp_Det").find("span.last_Emp_Det").removeClass("disabled");
                    $("#g_divPage_Emp_Det").find("span.next_Emp_Det").removeClass("disabled");
                }

                function g_lastEvent_Emp_Det() {
                    $("#g_divPage_Emp_Det").find("span.last_Emp_Det").addClass("disabled");
                    $("#g_divPage_Emp_Det").find("span.next_Emp_Det").addClass("disabled");
                    $("#g_divPage_Emp_Det").find("span.first_Emp_Det").removeClass("disabled");
                    $("#g_divPage_Emp_Det").find("span.previous_Emp_Det").removeClass("disabled");
                }

                function g_allEvent_Emp_Det() {
                    $("#g_divPage_Emp_Det").find("span.first_Emp_Det").removeClass("disabled");
                    $("#g_divPage_Emp_Det").find("span.previous_Emp_Det").removeClass("disabled");
                    $("#g_divPage_Emp_Det").find("span.last_Emp_Det").removeClass("disabled");
                    $("#g_divPage_Emp_Det").find("span.next_Emp_Det").removeClass("disabled");
                }

                function g_limpiarEvent_Emp_Det() {
                    self.g_current_page_Emp_Det(1);

                    if (!$("#g_divPage_Emp_Det").hasClass("invisible")) { $("#g_divPage_Emp_Det").addClass("invisible"); }
                    if (!$("#g_divPage_Emp_Det").find("span.first_Emp_Det").hasClass("disabled")) { $("#g_divPage_Emp_Det").find("span.first_Emp_Det").addClass("disabled"); }
                    if (!$("#g_divPage_Emp_Det").find("span.previous_Emp_Det").hasClass("disabled")) { $("#g_divPage_Emp_Det").find("span.previous_Emp_Det").addClass("disabled"); }
                    if (!$("#g_divPage_Emp_Det").find("span.last_Emp_Det").hasClass("disabled")) { $("#g_divPage_Emp_Det").find("span.last_Emp_Det").addClass("disabled"); }
                    if (!$("#g_divPage_Emp_Det").find("span.next_Emp_Det").hasClass("disabled")) {
                        $("#g_divPage_Emp_Det").find("span.next_Emp_Det").addClass("disabled");
                    }
                }
                
            };

            ko.observableArray.fn.filtered_Emp_Det = function (query, column) {
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
            
            let md_Modelo_03 = new xMi_Modelo_03();
            ko.cleanNode($("#Frm_Empleados").get(0));
            ko.applyBindings(md_Modelo_03, $('#Frm_Empleados').get(0));
                                                


            // Articulos: 
            var xMi_Modelo_04 = function (){
                var self = this;
                         
                // Definiendo las Columnas de la Cuadricula...
                /*self.xSeleccion = ko.observable(false);
                self.Clic_Anulado = function () {
                    if (self.xSeleccion() == true) {

                    } else { }

                    return true;
                };

                self.ID = ko.observable('');
                self.CODIGO = ko.observable('');
                self.DESCRIPCION = ko.observable('');
                self.DESC_MODELO = ko.observable('');
                self.DESC_MARCA = ko.observable('');
                self.DESC_COLOR = ko.observable('');
                self.DESC_PROCEDENCIA = ko.observable('');
                self.COSTO = ko.observable('');*/
                
                
                // Recuperando los Registros para la Cuadricula Productos N2
                self.xReg_Total_Art_Det = ko.observable(true);  
                self.Mis_Datos_Art_Det = ko.observableArray([]);
                self.Cargar_Mis_Articulos_Det = async ( ) => {
                    let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_REG_ARTICULOS_AFECTABLE';
                    let Mis_Parametros = JSON.stringify({ });

                    let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                    if (Mis_Registros.d.exito == false){
                        xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); self.Mis_Datos_Art_Det([]); self.xReg_Total_Art_Det(true); 
                    } else { 
                        self.Mis_Datos_Art_Det($.parseJSON(Mis_Registros.d.Mensaje)); 
                        if (self.Mis_Datos_Art_Det().length > 0){ self.xReg_Total_Art_Det(false); } else { self.xReg_Total_Art_Det(true); }
                    } 
                };
                
                //Seleccionando una Fila
                self.selectRow_Art_Det = function(item){
                                        
                    $("#Txt_Desc_Articulos").val(item.DESCRIPCION); $("#Txt_Costo").val(item.COSTO); xID_ARTICULO = parseInt(item.ID);

                    xCOD_ARTICULO = item.CODIGO; 
                    xSERIE_ARTICULO = item.SERIE; 
                    xMODELO_ARTICULO = item.DESC_MODELO; 
                    xMARCA_ARTICULO = item.DESC_MARCA; 
                    xCOLOR_ARTICULO = item.DESC_COLOR; 
                    xPROCEDENCIA_ARTICULO = item.DESC_PROCEDENCIA;

                    $("#Frm_Articulos").dialog("close"); 
                };
                                
                //self.Seleccionar_Elemento = function (VALOR) {
                //    return VALOR;
                //};
                                
                //Paginación de la Cuadricula
                self.g_current_page_Art_Det = ko.observable(1);
                self.search_Art_Det = ko.observable('');

                self.g_nPagina_Art_Det = ko.observable(1);
                self.g_nextPage_Art_Det = ko.observable();
                self.g_nPorPagina_Art_Det = ko.observable(15);
                self.g_firstPage_Art_Det = ko.observable(1);
                self.g_previousPage_Art_Det = ko.observable();

                self.g_lstTabla_Art_Det = ko.observableArray([]);

                self.g_lastPage_Art_Det = ko.computed(function () {
                    var dt = self.Mis_Datos_Art_Det.filtered_Art_Det(self.search_Art_Det());
                    self.g_current_page_Art_Det(1);
                    g_firstEvent_Art_Det();
                    self.g_lstTabla_Art_Det(ko.mapping.toJS(dt));
                    var div = self.g_lstTabla_Art_Det().length / self.g_nPorPagina_Art_Det();
                    var divFloor = Math.floor(div);
                    if (div > divFloor) {
                        div = divFloor + 1;
                    }

                    if (div == 1) {
                        g_unicEvent_Art_Det();
                    }

                    return div;
                }, this);

                self.g_visible_pagination_Art_Det = ko.computed(function () {
                    if (self.g_lstTabla_Art_Det().length == 0) {
                        $("#g_divPage_Art_Det").addClass("invisible");
                    }
                    else {
                        $("#g_divPage_Art_Det").removeClass("invisible");
                    }
                }, this);

                self.g_Paginacion_Art_Det = ko.computed(function () {
                    var page = (parseInt(self.g_current_page_Art_Det()) * parseInt(self.g_nPorPagina_Art_Det())) - parseInt(self.g_nPorPagina_Art_Det());

                    $("#g_inputPage_Art_Det").val('Total Reg.: ' + self.g_lstTabla_Art_Det().length + ' - Pag. ' + self.g_current_page_Art_Det() + ' de ' + self.g_lastPage_Art_Det());

                    if (parseInt(self.g_current_page_Art_Det(), 10) < parseInt(self.g_lastPage_Art_Det(), 10)) {
                        $("#g_divPage_Art_Det").find("span.last_Art_Det").removeClass("disabled");
                        $("#g_divPage_Art_Det").find("span.next_Art_Det").removeClass("disabled");
                    }

                    return self.g_lstTabla_Art_Det.slice(page, page + parseInt(self.g_nPorPagina_Art_Det()));
                });

                $("#g_last_Art_Det").click(function (evt) {
                    if (!$("#g_last_Art_Det").hasClass("disabled")) {
                        self.g_current_page_Art_Det(self.g_lastPage_Art_Det());
                        $("#g_inputPage_Art_Det").val('Total Reg.: ' + self.g_lstTabla_Art_Det().length + ' - Pag. ' + self.g_current_page_Art_Det() + ' de ' + self.g_lastPage_Art_Det());
                        g_lastEvent_Art_Det();
                    }
                });

                $("#g_first_Art_Det").click(function (evt) {
                    if (!$("#g_first_Art_Det").hasClass("disabled")) {
                        self.g_current_page_Art_Det(self.g_firstPage_Art_Det());
                        $("#g_inputPage_Art_Det").val('Total Reg.: ' + self.g_lstTabla_Art_Det().length + ' - Pag. ' + self.g_current_page_Art_Det() + ' de ' + self.g_lastPage_Art_Det());
                        g_firstEvent_Art_Det();
                    }
                });

                $("#g_previous_Art_Det").click(function (evt) {
                    if (!$("#g_previous_Art_Det").hasClass("disabled")) {
                        var g_current_page = parseInt(self.g_current_page_Art_Det(), 10);
                        self.g_previousPage_Art_Det(g_current_page - 1);
                        self.g_current_page_Art_Det(self.g_previousPage_Art_Det());
                        $("#g_inputPage_Art_Det").val('Total Reg.: ' + self.g_lstTabla_Art_Det().length + ' - Pag. ' + self.g_current_page_Art_Det() + ' de ' + self.g_lastPage_Art_Det());

                        $("#g_divPage_Art_Det").find("span.last_Art_Det").removeClass("disabled");
                        $("#g_divPage_Art_Det").find("span.next_Art_Det").removeClass("disabled");

                        if (self.g_current_page_Art_Det() == self.g_firstPage_Art_Det()) {
                            $("#g_divPage_Art_Det").find("span.first_Art_Det").addClass("disabled");
                            $("#g_divPage_Art_Det").find("span.previous_Art_Det").addClass("disabled");
                        }
                    }
                });

                $("#g_next_Art_Det").click(function (evt) {
                    if (!$("#g_next_Det").hasClass("disabled")) {
                        var g_current_page = parseInt(self.g_current_page_Art_Det(), 10);
                        self.g_nextPage_Art_Det(g_current_page + 1);
                        self.g_current_page_Art_Det(self.g_nextPage_Art_Det());
                        $("#g_inputPage_Art_Det").val('Total Reg.: ' + self.g_lstTabla_Art_Det().length + ' - Pag. ' + self.g_current_page_Art_Det() + ' de ' + self.g_lastPage_Art_Det());

                        $("#g_divPage_Art_Det").find("span.first_Art_Det").removeClass("disabled");
                        $("#g_divPage_Art_Det").find("span.previous_Art_Det").removeClass("disabled");

                        if (self.g_current_page_Art_Det() == self.g_lastPage_Art_Det()) {
                            $("#g_divPage_Art_Det").find("span.last_Art_Det").addClass("disabled");
                            $("#g_divPage_Art_Det").find("span.next_Art_Det").addClass("disabled");
                        }
                    }
                });

                $("#g_inputPage_Art_Det").bind('focus mouseup', function (event) {
                    var g_current_page = parseInt(self.g_current_page_Art_Det(), 10);

                    if (event.type === 'focus') {
                        $(this).val(g_current_page).select();
                    }

                    if (event.type === 'mouseup') {
                        $(this).val(g_current_page).select();
                        return false;
                    }

                    if (self.g_current_page_Art_Det() > self.g_firstPage_Art_Det() && self.g_current_page_Art_Det() < self.g_lastPage_Art_Det()) {
                        g_allEvent_Art_Det();
                    }
                });

                $("#g_inputPage_Art_Det").bind('blur keydown', function (event) {
                    if (event.keyCode === 13 || event.type === 'blur') {
                        if (isNaN($(this).val()) || $(this).val() < self.g_firstPage_Art_Det() || $(this).val() > self.g_lastPage_Art_Det()) {
                            $(this).val('Total Reg.: ' + self.g_lstTabla_Art_Det().length + ' - Pag. ' + self.g_current_page_Art_Det() + ' de ' + self.g_lastPage_Art_Det());
                        }
                        else {
                            var g_current_page = parseInt($(this).val(), 10);
                            self.g_current_page_Art_Det(g_current_page);
                            $(this).val('Total Reg.: ' + self.g_lstTabla_Art_Det().length + ' - Pag. ' + self.g_current_page_Art_Det() + ' de ' + self.g_lastPage_Art_Det());

                            if (self.g_current_page_Art_Det() == self.g_firstPage_Art_Det() && self.g_current_page_Art_Det() != self.g_lastPage_Art_Det()) { g_firstEvent_Art_Det() };
                            if (self.g_current_page_Art_Det() == self.g_lastPage_Art_Det() && self.g_current_page_Art_Det() != self.g_firstPage_Art_Det()) { g_lastEvent_Art_Det() };
                        }

                        if (self.g_current_page_Art_Det() > self.g_firstPage_Art_Det() && self.g_current_page_Art_Det() < self.g_lastPage_Art_Det()) {
                            g_allEvent_Art_Det();
                        }
                    }

                });

                function g_unicEvent_Art_Det() {
                    $("#g_divPage_Art_Det").find("span.first_Art_Det").addClass("disabled");
                    $("#g_divPage_Art_Det").find("span.previous_Art_Det").addClass("disabled");
                    $("#g_divPage_Art_Det").find("span.last_Art_Det").addClass("disabled");
                    $("#g_divPage_Art_Det").find("span.next_Art_Det").addClass("disabled");
                }

                function g_firstEvent_Art_Det() {
                    $("#g_divPage_Art_Det").find("span.first_Art_Det").addClass("disabled");
                    $("#g_divPage_Art_Det").find("span.previous_Art_Det").addClass("disabled");
                    $("#g_divPage_Art_Det").find("span.last_Art_Det").removeClass("disabled");
                    $("#g_divPage_Art_Det").find("span.next_Art_Det").removeClass("disabled");
                }

                function g_lastEvent_Art_Det() {
                    $("#g_divPage_Art_Det").find("span.last_Art_Det").addClass("disabled");
                    $("#g_divPage_Art_Det").find("span.next_Art_Det").addClass("disabled");
                    $("#g_divPage_Art_Det").find("span.first_Art_Det").removeClass("disabled");
                    $("#g_divPage_Art_Det").find("span.previous_Art_Det").removeClass("disabled");
                }

                function g_allEvent_Art_Det() {
                    $("#g_divPage_Art_Det").find("span.first_Art_Det").removeClass("disabled");
                    $("#g_divPage_Art_Det").find("span.previous_Art_Det").removeClass("disabled");
                    $("#g_divPage_Art_Det").find("span.last_Art_Det").removeClass("disabled");
                    $("#g_divPage_Art_Det").find("span.next_Art_Det").removeClass("disabled");
                }

                function g_limpiarEvent_Art_Det() {
                    self.g_current_page_Art_Det(1);

                    if (!$("#g_divPage_Art_Det").hasClass("invisible")) { $("#g_divPage_Art_Det").addClass("invisible"); }
                    if (!$("#g_divPage_Art_Det").find("span.first_Art_Det").hasClass("disabled")) { $("#g_divPage_Art_Det").find("span.first_Art_Det").addClass("disabled"); }
                    if (!$("#g_divPage_Art_Det").find("span.previous_Art_Det").hasClass("disabled")) { $("#g_divPage_Art_Det").find("span.previous_Art_Det").addClass("disabled"); }
                    if (!$("#g_divPage_Art_Det").find("span.last_Art_Det").hasClass("disabled")) { $("#g_divPage_Art_Det").find("span.last_Art_Det").addClass("disabled"); }
                    if (!$("#g_divPage_Art_Det").find("span.next_Art_Det").hasClass("disabled")) {
                        $("#g_divPage_Art_Det").find("span.next_Art_Det").addClass("disabled");
                    }
                }
                
            };

            ko.observableArray.fn.filtered_Art_Det = function (query, column) {
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
            
            let md_Modelo_04 = new xMi_Modelo_04();
            ko.cleanNode($("#Frm_Articulos").get(0));
            ko.applyBindings(md_Modelo_04, $('#Frm_Articulos').get(0));
                                                

            // Comportamiento de los Objetos
            $('#Txt_Costo').keypress(yMetodos[7]);
              
            $('#Dtp_Fecha').bind('valueChanged', function (event) {
                if (xBand_Reg_Asignacion == 1){
                    $("#Txt_Concepto").val("ALTA DE ASIGNACIONES DE ARTICULOS (" + $("#Dtp_Fecha").val() + ")"); 
                }
            });
              
            // Ventanas 
            $("#Frm_DATOS").dialog({
                autoOpen: false, width: (lastWidth * 0.85), height: (lastHeight * 0.75), modal: true, resizable: true, show: "slide", hide: "slide",
                dialogClass: "Estilos_Ventanas_Modales",
                position: "center",
                closeOnEscape: false,
                open: function () {                              
                    $(this).dialog('option', 'title', (xBand_Reg_Asignacion == 1) ? 'AGREGAR REGISTRO NUEVO' : 'EDITAR REGISTRO EXISTENTE');

                    if (xBand_Reg_Asignacion == 1) {
                        // Llamada de las Funciones Locales
                        yMetodos[5]("Cmb_Tipo_Movimientos", Mis_Tipos_Movimientos);
                        

                        $(".EncInputBox").each(function () {
                            $(this).prop('value', '')
                        });

                        $(".EncComboBox").each(function () {
                            $(this).prop('selectedIndex', 0)
                        });

                        $(".DetInputBox").each(function () {
                            $(this).prop('value', '')
                        });

                                                                        
                        xID_ARTICULO = 0; xCOD_ARTICULO = ''; xSERIE_ARTICULO = ''; xID_EMPLEADO = 0;
                        xMODELO_ARTICULO = ''; xMARCA_ARTICULO = ''; xCOLOR_ARTICULO = ''; xPROCEDENCIA_ARTICULO = '';

                        $("#Dtp_Fecha").val(date_str); $("#Txt_Concepto").val("ALTA DE ASIGNACIONES DE ARTICULOS (" + $("#Dtp_Fecha").val() + ")"); 
                                        
                        // Limpiando el Detalle
                        md_Modelo_02.Mis_Datos_Det([]);
                    } else { md_Modelo_02.Cargar_Mis_Asignaciones_Det(xID_REG_ASIGNACION);  }

                    setTimeout(function () {
                        $('#Cmb_Tipo_Movimientos').focus();
                    }, 420);
                },
                buttons: [
                 {
                     text: "GUARDAR",
                     click: function () {
                         // Datos del Encabezado
                         var xCONCEPTO = ($.trim($("#Txt_Concepto").val()).length == 0) ? "" : $.trim($("#Txt_Concepto").val()).toUpperCase();
                         var xFECHA = yMetodos[8]($("#Dtp_Fecha").val());
                         
                         var xUSER = yID_USER, xSESION = ySESION_USER;

                         // Validando Informacion...
                         let xModelo_Mensajes = {
                             xCONCEPTO: 'Debe de digitar el Concepto del Documento de Asignaciones...'
                         };

                         let xModelo = {
                             xCONCEPTO: xCONCEPTO
                         };

                         let xModelo_Exc = ['xID'];
                                  
                         yMetodos[2](xModelo, xModelo_Mensajes, xModelo_Exc);
                 
                         if (xModelo.Mi_Mensaje){
                             yMetodos[1](xModelo.Mi_Mensaje, "warning"); return false;
                         }

                         xID_TIPO_MOVIMIENTO = parseInt($("#Cmb_Tipo_Movimientos").val());
                                                  
                         var uEncabezado = [];

                         uEncabezado.push({ ID: xID_REG_ASIGNACION, FECHA: xFECHA, EMPLEADO: xID_EMPLEADO, TIPO_MOVIMIENTO: xID_TIPO_MOVIMIENTO, CONCEPTO: xCONCEPTO, USER: xUSER });

                         var uDetalle = [];

                         for (var i = 0; i <= (md_Modelo_02.Mis_Datos_Det().length - 1) ; i++) {
                             uDetalle.push({ ARTICULO: md_Modelo_02.Mis_Datos_Det()[i].ID_ARTICULO, COSTO: md_Modelo_02.Mis_Datos_Det()[i].COSTO });
                         }

                         // Ejecutar la Opción...
                         let Guardar_Registros = async (lENC, lDET, lSESION) => {
                             let Mi_url = "Frm_Metodos_WEB_Services.aspx/Insertar_Actualizar_REG_ASIGNACIONES";
                             let Mis_Parametros = JSON.stringify({ xENC: lENC, xDET: lDET, xSESION: lSESION  });

                             let response = await yMetodos[4]('¿Desea Guardar el Registro?...', Mi_url, Mis_Parametros);
                             if (response.d.exito == false){
                                 xContenido = response.d.Mensaje; yMetodos[1](xContenido, "error"); 
                             } else { 
                                 xContenido = 'Acción Realizada con Exito....'; yMetodos[1](xContenido, "success"); 
                                 xID_REG_ASIGNACION = parseFloat(response.d.Mensaje);

                                 if (xBand_Reg_Asignacion == 1) {
                                     $(".EncInputBox").each(function () {
                                         $(this).prop('value', '')
                                     });

                                     $(".EncComboBox").each(function () {
                                         $(this).prop('selectedIndex', 0)
                                     });

                                     $(".DetInputBox").each(function () {
                                         $(this).prop('value', '')
                                     });

                                                                      
                                     xID_REG_ASIGNACION = 0; xID_EMPLEADO = 0;
                                     
                                     xID_ARTICULO = 0; xCOD_ARTICULO = ''; xSERIE_ARTICULO = ''; 
                                     xMODELO_ARTICULO = ''; xMARCA_ARTICULO = ''; xCOLOR_ARTICULO = ''; xPROCEDENCIA_ARTICULO = '';

                                     $("#Dtp_Fecha").val(date_str); $("#Txt_Concepto").val("ALTA DE ASIGNACIONES DE ARTICULOS (" + $("#Dtp_Fecha").val() + ")"); 
                                          
                                     // Limpiando el Detalle
                                     md_Modelo_02.Mis_Datos_Det([]);

                                 } 

                                 setTimeout(function () {
                                     $('#Cmb_Tipo_Movimientos').focus();
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

                        md_Modelo_01.Cargar_Mis_Asignaciones_ENC(md_Modelo_01.ID_Estado());
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
                    $(this).dialog('option', 'title', 'BAJA Y/O ANULACION AL DOCUMENTO DE ASIGNACION Nº - ' + xCODIGO_ASIGNACION);
                    
                    $("#Txt_Fecha_Baja").val(date_str); 
                    $("#Txt_Observacion_Baja").val('');
                },
                buttons: [
                {
                    text: "GUARDAR",
                    click: function () {
                        var xOBS = ($.trim($("#Txt_Observacion_Baja").val()).length == 0) ? "BAJA AL DOCUMENTO DE ASIGNACION Nº : " + xCODIGO_ASIGNACION : $.trim($("#Txt_Observacion_Baja").val()).toUpperCase();
                                    
                        var bFECHA_BAJA = yMetodos[8]($("#Txt_Fecha_Baja").val());
                        
                        var xUSER = yID_USER, xSESION = ySESION_USER;

                        // Ejecutando la Orden                       
                        let Baja_Registros = async (lID, lFECHA, lOBS, lUSER, lSESION) => {
                            let Mi_url = "Frm_Metodos_WEB_Services.aspx/Baja_REG_ASIGNACIONES";
                            let Mis_Parametros = JSON.stringify({ xID: lID, xBAJA: lFECHA, xOBS: lOBS, xUSER: lUSER, xSESION: lSESION  });

                            let response = await yMetodos[4]('¿Desea dar de BAJA al Registro?...', Mi_url, Mis_Parametros);
                            if (response.d.exito == false){
                                xContenido = response.d.Mensaje; yMetodos[1](xContenido, "error"); 
                            } else { 
                                xContenido = 'Acción Realizada con Exito...'; yMetodos[1](xContenido, "success"); 

                                // Limpiando Campos...
                                xID_REG_ASIGNACION = 0;

                                $("#Txt_Fecha_Baja").val(date_str); 
                                $("#Txt_Observacion_Baja").val('');
                            } 
                        };
                        Baja_Registros(xID_REG_ASIGNACION, bFECHA_BAJA, xOBS, xUSER, xSESION);
                    },
                    class: "ui-button-spl2"
                },
                {
                    text: "CERRAR",
                    click: function () {
                        $(this).dialog("close"); 

                        md_Modelo_01.Cargar_Mis_Asignaciones_ENC(md_Modelo_01.ID_Estado());
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
                 

            $("#Frm_Empleados").dialog({
                autoOpen: false, width: (lastWidth * 0.75), height: 'auto', modal: true, resizable: true, show: "slide", hide: "slide",
                dialogClass: "Estilos_Ventanas_Modales",
                position: "center",
                closeOnEscape: false,
                open: function () {
                    $(this).dialog('option', 'title', 'ALFABETICO DE EMPLEADOS');
                    
                    md_Modelo_03.Cargar_Mis_Empleados_Det();
                },
                buttons: [
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

            $("#Frm_Articulos").dialog({
                autoOpen: false, width: (lastWidth * 0.75), height: 'auto', modal: true, resizable: true, show: "slide", hide: "slide",
                dialogClass: "Estilos_Ventanas_Modales",
                position: "center",
                closeOnEscape: false,
                open: function () {
                    $(this).dialog('option', 'title', 'CATALOGO DE ARTICULOS');

                    md_Modelo_04.Cargar_Mis_Articulos_Det();                
                },
                buttons: [
                {
                    text: "APLICAR",
                    click: function () {
                        if (md_Modelo_02.Mis_Datos_Det().length == 0){
                            md_Modelo_02.xReg_Total_Det(true);
                        }

                        md_Modelo_04.g_Paginacion_Art_Det().forEach(function (i) {
                            if (i.SELECCION){
                                var xI = md_Modelo_02.Mis_Datos_Det().length;
                                
                                md_Modelo_02.Mis_Datos_Det.push({
                                    ID: xI,
                                    ID_ARTICULO: i.ID,
                                    COD_ARTICULO: i.CODIGO,
                                    DESC_ARTICULO: i.DESCRIPCION,
                                    SERIE_ARTICULO: i.SERIE,
                                    MODELO_ARTICULO: i.DESC_MODELO,
                                    MARCA_ARTICULO: i.DESC_MARCA,
                                    COLOR_ARTICULO: i.DESC_COLOR,
                                    PROCEDENCIA_ARTICULO: i.DESC_PROCEDENCIA,
                                    COSTO: i.COSTO
                                });

                                md_Modelo_02.xReg_Total_Det(false);
                            }
                        });
                        
                        
                        $(this).dialog("close"); 

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

            $("#Frm_Impresiones").dialog({
                autoOpen: false, width: (lastWidth * 0.60), height: 'auto', modal: true, resizable: true, show: "slide", hide: "slide",
                dialogClass: "Estilos_Ventanas_Modales",
                position: "center",
                closeOnEscape: false,
                open: function () {
                    $(this).dialog('option', 'title', 'IMPRESIONES GENERALES');
                          
                    if (xMODO_RPT == 0){
                        $('#xOpt_Rpt').show();
                    } else if (xMODO_RPT == 1){
                        $('#xOpt_Rpt').hide();
                    }

                    // Listando las Opciones del Reporte
                    async function Datos_Reportes(){
                        // Mis Periodos
                        let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Lista_Reportes_03';
                        let Mis_Parametros = JSON.stringify({ });

                        if (xMODO_RPT == 0){
                            Mi_url = 'Frm_Metodos_WEB_Services.aspx/Lista_Reportes_03';
                            Mis_Parametros = JSON.stringify({ });
                        } else if (xMODO_RPT == 1){
                            Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_Reportes_01';
                            Mis_Parametros = JSON.stringify({ xID: 21 });
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

                                    var _xFecha = $("#Dtp_Fecha_rpt").jqxDateTimeInput('getRange');
                                    var xAntes = moment(_xFecha.from).format('YYYY-MM-DD');
                                    var xDespues = moment(_xFecha.to).format('YYYY-MM-DD');

                                    var xEnc = ' - DE ' + moment(_xFecha.from).format('DD-MM-YYYY') + ' A ' + moment(_xFecha.to).format('DD-MM-YYYY');


                                    // Llenando los Parametros
                                    var xParametros = [];
                                    xParametros.push({ ID: 'xNo_Reporte', DESCRIPCION: $("#Cmb_Informes").val() });
                                    xParametros.push({ ID: 'xTitulo_01', DESCRIPCION: mEMPRESA });
                                    xParametros.push({ ID: 'xTitulo_02', DESCRIPCION: mDIRECCION });
                                    xParametros.push({ ID: 'xTitulo_03', DESCRIPCION: mDEPARTAMENTO });

                                    xParametros.push({ ID: 'xTitulo_04', DESCRIPCION: $("#Cmb_Informes option:selected").html() });
                                    
                                    if ($("#Cmb_Informes").val() == 21) {
                                        xParametros.push({ ID: 'xTitulo_04', DESCRIPCION: $("#Cmb_Informes option:selected").html() });
                                    } else if ($("#Cmb_Informes").val() == 22) {
                                        xParametros.push({ ID: 'xTitulo_04', DESCRIPCION: $("#Cmb_Informes option:selected").html() + xEnc });
                                    } 
                                    
                                    xParametros.push({ ID: 'xTitulo_05', DESCRIPCION: yLog_User });
                                    
                                    if (xMODO_RPT == 0){
                                        xParametros.push({ ID: 'xTitulo_06', DESCRIPCION: md_Modelo_01.ID_Estado() });
                                        xParametros.push({ ID: 'xTitulo_07', DESCRIPCION: xAntes });
                                        xParametros.push({ ID: 'xTitulo_08', DESCRIPCION: xDespues });
                                        xParametros.push({ ID: 'xTitulo_09', DESCRIPCION: xTipo_Rpt });
                                    } else if (xMODO_RPT == 1){
                                        xParametros.push({ ID: 'xTitulo_06', DESCRIPCION: xID_REG_ASIGNACION });
                                        xParametros.push({ ID: 'xTitulo_07', DESCRIPCION: xTipo_Rpt });
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
                        md_Modelo_01.Cargar_Mis_Asignaciones_ENC(md_Modelo_01.ID_Estado());
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
    $("#Opt_02_04").css({ "background-color": "#F4FA58" });

    yTipo_User = $("#ROL_USER").val(); yUser = $("#NomUser").text(); yLog_User = $("#LOG_USER").val(); 
    yID_USER = parseFloat($("#ID_USER").val()); yID_ROL_USER = parseFloat($("#ID_ROL_USER").val()); ySESION_USER = parseFloat($("#SESION_USER").val()); 

    aCod_Opt = "Opt_02_04"; 
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

    $("#Cmd_Buscar_Empleados").button({ icons: { primary: 'ui-icon-gear' } });
    $("#Cmd_Buscar_Empleados").find(".ui-icon").css({ "background-image": "url('css/images/operaciones/buscar.png')", "background-position": "0", "vertical-align": "middle", "text-align": "center" });

    $("#Cmd_Buscar_Articulos").button({ icons: { primary: 'ui-icon-gear' } });
    $("#Cmd_Buscar_Articulos").find(".ui-icon").css({ "background-image": "url('css/images/operaciones/buscar.png')", "background-position": "0", "vertical-align": "middle", "text-align": "center" });

};

function Comportamiento_Objetos() {
    // Comportamiento de los Objetos
    // Encabezado
    $("#Dtp_Fecha").jqxDateTimeInput({ width: '100%', height: '30px', culture: 'es-ES', dropDownVerticalAlignment: "bottom", template: "primary", animationType: 'slide', formatString: 'dd/MM/yyyy', theme: 'arctic', textAlign: 'center' });
    $("#Txt_Fecha_Baja").jqxDateTimeInput({ width: '100%', height: '30px', culture: 'es-ES', dropDownVerticalAlignment: "bottom", template: "primary", animationType: 'slide', formatString: 'dd/MM/yyyy', theme: 'arctic', textAlign: 'center' });
        
    $('#Cmb_Tipo_Movimientos').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Concepto').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Cmb_Tipo_Movimientos').change(function (event) {
        var xValor = $('#Cmb_Tipo_Movimientos').val(); // Valor del ID o VALUE
        var xTexto = $("#Cmb_Tipo_Movimientos option:selected").html(); // Valor del Texto Seleccionado

        xID_TIPO_MOVIMIENTO = parseInt(xValor);
    });
        
    $('#Txt_Concepto').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Costo').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });
                  
    $('#Txt_Costo').keypress(function (event) {
        if (event.which == 13) {
            $('#Cmd_Agregar_Det').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $("#Dtp_Fecha_rpt").jqxDateTimeInput({ width: '100%', height: '25px', culture: 'es-ES', dropDownVerticalAlignment: "bottom", template: "primary", animationType: 'slide', selectionMode: 'range', formatString: 'dd/MM/yyyy' });
    

    // Parametro del Reporte...
    $('#Cmb_Informes').change(function (event) {
        var xValor = $('#Cmb_Informes').val(); // Valor del ID o VALUE
        var xTexto = $("#Cmb_Informes option:selected").html(); // Valor del Texto Seleccionado
           
    });
};

