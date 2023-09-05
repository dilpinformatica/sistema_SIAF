// Variable Global
var xUbica = "", xElem = "", yMetodos = [], xSesion_Prueba = "", yUser = "", xBand_Reg_Articulos = 0, xID_REG_ARTICULOS = 0, xDESC_ARTICULOS = '', Mis_Tipos_Color = [],
    xID_TIPO_CLASE = 0, Mis_Tipos_Clases = [], xID_TIPO_MODELO = 0, Mis_Tipos_Modelos = [], xID_TIPO_MARCA = 0, Mis_Tipos_Marcas = [], xID_TIPO_COLOR = 0, xID_TIPO_PROCEDENCIA = 0, 
    Mis_Tipos_Procedencias = [];

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
        yMetodos[6] = Valor.xTecla_Presionada;
        yMetodos[7] = Valor.xObtener_Fecha;
        

        try {
            /* --- Encabezado de la Pagina ----- */
            // Funcion de Configuracion Inicial y Comportamiento de los Objetos
            xUbica = GetUserXmlInfo('LastTabClicked'); xElem = xUbica.split('º');
            xSesion_Prueba = GetSessionValue("Data_Prueba"); initdoc();
            Configuracion_Inicial(); Comportamiento_Objetos();

            // Encabezado Principal: Tab_01 (Productos)
            var xMi_Modelo_01 = function (){
                var self = this;

                // Declaración de los Observables...
                let lstObs = ['xReg_Total', 'g_current_page', 'search', 'g_nPagina', 'g_nextPage', 'g_nPorPagina', 'g_firstPage', 'g_previousPage', 'ID_Estado', 'ID_Paginas'];
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
                self.Nuevo_Enc = function () {
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 1) {
                        if (aPermisos.length > 0) {
                            if (aPermisos[0].INS == '0') {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }
                                                          
                    // Se Visualiza el DIV de la Gestión
                    xBand_Reg_Articulos = 1; xID_REG_ARTICULOS = 0;
                    $('#Frm_Datos').dialog('open');
                };

                self.Imprimir_Enc = function () {
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 1) {
                        if (aPermisos.length > 0) {
                            if (aPermisos[0].IMP == '0') {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }
                                                                                
                    $('#Frm_Impresiones').dialog('open');
                };

                // Datos Iniciales...
                self.Datos_Encabezados = async () => {
                
                    // Tipos de Clases
                    let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_CAT_TIPO_CLASES_AFECTABLE';
                    let Mis_Parametros = JSON.stringify({ });

                    let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                    if (Mis_Registros.d.exito == false){
                        xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                    } else { Mis_Tipos_Clases = $.parseJSON(Mis_Registros.d.Mensaje); } 

                    // Tipos de Colores
                    Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_CAT_TIPO_COLORES_AFECTABLE';
                    Mis_Parametros = JSON.stringify({ });

                    Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                    if (Mis_Registros.d.exito == false){
                        xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                    } else { Mis_Tipos_Color = $.parseJSON(Mis_Registros.d.Mensaje); } 

                    // Tipos de Modelos
                    Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_CAT_TIPO_MODELOS_AFECTABLE';
                    Mis_Parametros = JSON.stringify({ });

                    Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                    if (Mis_Registros.d.exito == false){
                        xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                    } else { Mis_Tipos_Modelos = $.parseJSON(Mis_Registros.d.Mensaje); } 

                    // Tipos de Marcas
                    Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_CAT_TIPO_MARCAS_AFECTABLE';
                    Mis_Parametros = JSON.stringify({ });

                    Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                    if (Mis_Registros.d.exito == false){
                        xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                    } else { Mis_Tipos_Marcas = $.parseJSON(Mis_Registros.d.Mensaje); } 

                    // Tipos de Procedencias
                    Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_CAT_TIPO_PROCEDENCIAS_AFECTABLE';
                    Mis_Parametros = JSON.stringify({ });

                    Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                    if (Mis_Registros.d.exito == false){
                        xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                    } else { Mis_Tipos_Procedencias = $.parseJSON(Mis_Registros.d.Mensaje); } 

                };
                self.Datos_Encabezados();

                
                // Recuperando los Registros para la Cuadricula Productos N1
                self.ID_Estado(1); 
                self.Cargar_Mis_Articulos = async (yESTADO) => {
                    if ((yESTADO == null) || (yESTADO == undefined)){
                        self.Mis_Datos([]); self.xReg_Total(true); 
                    } else {                        
                        $(".loader").fadeIn("slow");
                        let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_REG_ARTICULOS';
                        let Mis_Parametros = JSON.stringify({ xEstado: yESTADO });

                        let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                        if (Mis_Registros.d.exito == false){
                            xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); self.Mis_Datos([]); self.xReg_Total(true);
                        } else { 
                            self.Mis_Datos($.parseJSON(Mis_Registros.d.Mensaje)); 
                            if (self.Mis_Datos().length > 0){ self.xReg_Total(false); } else { self.xReg_Total(true); }
                        } 
                        $(".loader").fadeOut("slow");
                    }                    
                };
                self.Cargar_Mis_Articulos(self.ID_Estado());
                
                self.load_Datos_Articulos = function () {
                    if ((self.ID_Estado() != null) || (self.ID_Estado() != undefined)){
                        self.Cargar_Mis_Articulos(self.ID_Estado());
                    } else { self.Mis_Datos([]); self.xReg_Total(true); }
                };

                //Seleccionando una Fila
                self.selectRow_Editar = function(item){
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 1) {
                        if (aPermisos.length > 0) {
                            if (aPermisos[0].ACT == '0') {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }
                    
                    // Se recuperan los Datos...
                    xID_REG_ARTICULOS = parseFloat(item.ID); xDESC_ARTICULOS = item.DESCRIPCION; 
                    
                    yMetodos[5]("Cmb_Tipo_Clase", Mis_Tipos_Clases); yMetodos[5]("Cmb_Tipo_Modelo", Mis_Tipos_Modelos);
                    yMetodos[5]("Cmb_Tipo_Marca", Mis_Tipos_Marcas); yMetodos[5]("Cmb_Tipo_Color", Mis_Tipos_Color);
                    yMetodos[5]("Cmb_Tipo_Procedencia", Mis_Tipos_Procedencias);

                    $("#Txt_Descripcion").val(item.DESCRIPCION); $("#Txt_Observaciones").val(item.OBSERVACIONES); 
                    $("#Dtp_Fecha").val(item.INGRESO); $("#Dtp_Fecha_Compra").val(item.FECHA_COMPRA);

                    $("#Cmb_Tipo_Clase").val(parseInt(item.ID_CLASE)); xID_TIPO_CLASE = parseInt(item.ID_CLASE);
                    $("#Cmb_Tipo_Modelo").val(parseInt(item.ID_MODELO)); xID_TIPO_MODELO = parseInt(item.ID_MODELO);
                    $("#Cmb_Tipo_Marca").val(parseInt(item.ID_MARCA)); xID_TIPO_MARCA = parseInt(item.ID_MARCA);
                    $("#Cmb_Tipo_Color").val(parseInt(item.ID_COLOR)); xID_TIPO_COLOR = parseInt(item.ID_COLOR);
                    $("#Cmb_Tipo_Procedencia").val(parseInt(item.ID_PROCEDENCIA)); xID_TIPO_PROCEDENCIA = parseInt(item.ID_PROCEDENCIA);

                    $("#Txt_Codigo").val(item.CODIGO); $("#Txt_Serie").val(item.SERIE); $("#Txt_Costo").val(item.COSTO);

                    // Se Visualiza el DIV de la Gestión
                    xBand_Reg_Articulos = 2;
                    $('#Frm_Datos').dialog('open');
                };

                self.selectRow_Baja = function(item){
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 1) {
                        if (aPermisos.length > 0) {
                            if (aPermisos[0].DEL == '0') {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }
                      
                    if (parseInt(item.ID_ESTADO) == 0) {
                        xContenido = 'Este Registro ya fue dado de Baja...';
                        yMetodos[1](xContenido, "warning"); return false;
                    }

                    // Se recuperan los Datos...
                    xID_REG_ARTICULOS = parseFloat(item.ID); 

                    $('#Frm_Baja').dialog('open');
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
                        let Mi_url = "Frm_Metodos_WEB_Services.aspx/Reactivar_REG_ARTICULOS";
                        let Mis_Parametros = JSON.stringify({ xID: lID, xUSER: lUSER, xSESION: lSESION  });

                        let response = await yMetodos[4]('¿Desea REACTIVAR al Registro actual?...', Mi_url, Mis_Parametros);
                        if (response.d.exito == false){
                            xContenido = response.d.Mensaje; yMetodos[1](xContenido, "error"); 
                        } else { 
                            xContenido = 'Acción Realizada con Exito...'; yMetodos[1](xContenido, "success"); 
                            self.ID_Estado(1); self.Cargar_Mis_Articulos(self.ID_Estado());
                        } 
                    };
                    Reactivar_Registros(parseFloat(item.ID), yID_USER, ySESION_USER);
                };
                
                self.selectRow_Adjuntar = function(item){

                    if (parseInt(item.ID_ESTADO) == 0) {
                        xContenido = 'Este Registro ya fue dado de Baja...';
                        yMetodos[1](xContenido, "warning"); return false;
                    }

                    // Se recuperan los Datos...
                    xID_REG_ARTICULOS = parseFloat(item.ID); 

                    $('#Frm_Documentos_Adjuntos').dialog('open');               
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

            $('#Txt_Costo').keypress(yMetodos[6]);
            
            $('#Dtp_Fecha').bind('valueChanged', function (event) {
                if (xBand_Reg_Articulos == 1){
                    $("#Txt_Observaciones").val("ALTA DE ARTICULOS (" + $("#Dtp_Fecha").val() + ")"); 
                }
            });

                        
            // Ventanas 
            $("#Frm_Datos").dialog({
                autoOpen: false, width: (lastWidth * 0.75), height: 'auto', modal: true, resizable: true, show: "slide", hide: "slide",
                dialogClass: "Estilos_Ventanas_Modales",
                position: "center",
                closeOnEscape: false,
                open: function () {                              
                    $(this).dialog('option', 'title', (xBand_Reg_Articulos == 1) ? 'AGREGAR REGISTRO NUEVO' : 'EDITAR REGISTRO EXISTENTE');

                    if (xBand_Reg_Articulos == 1) {
                        
                        yMetodos[5]("Cmb_Tipo_Clase", Mis_Tipos_Clases); yMetodos[5]("Cmb_Tipo_Modelo", Mis_Tipos_Modelos);
                        yMetodos[5]("Cmb_Tipo_Marca", Mis_Tipos_Marcas); yMetodos[5]("Cmb_Tipo_Color", Mis_Tipos_Color);
                        yMetodos[5]("Cmb_Tipo_Procedencia", Mis_Tipos_Procedencias);

                        // Llamada de las Funciones Locales
                        $(".InputBox").each(function () {
                            $(this).prop('value', '')
                        });

                        $(".ComboBox").each(function () {
                            $(this).prop('selectedIndex', 0)
                        });
                                                
                        xID_REG_ARTICULOS = 0;  $("#Dtp_Fecha").val(date_str); $("#Dtp_Fecha_Compra").val(date_str); 
                                                
                        $("#Txt_Observaciones").val("ALTA DE ARTICULOS (" + $("#Dtp_Fecha").val() + ")"); 
                                                
                    } 

                    setTimeout(function () {
                        $('#Txt_Codigo').focus();
                    }, 420);
                },
                buttons: [
                 {
                     text: "GUARDAR",
                     click: function () {
                         // Datos del Encabezado
                         var xCOD = ($.trim($("#Txt_Codigo").val()).length == 0) ? "" : $.trim($("#Txt_Codigo").val()).toUpperCase();
                         var xSERIE = ($.trim($("#Txt_Serie").val()).length == 0) ? "" : $.trim($("#Txt_Serie").val()).toUpperCase();
                         var xDESC = ($.trim($("#Txt_Descripcion").val()).length == 0) ? "" : $.trim($("#Txt_Descripcion").val()).toUpperCase();
                         var xOBS = ($.trim($("#Txt_Observaciones").val()).length == 0) ? "" : $.trim($("#Txt_Observaciones").val()).toUpperCase();
                         var xCOSTO = ($.trim($("#Txt_Costo").val()).length == 0) ? "0" : $.trim($("#Txt_Costo").val().replace(',', '')).toUpperCase();

                         var xINGRESO = yMetodos[7]($("#Dtp_Fecha").val()); var xCOMPRA = yMetodos[7]($("#Dtp_Fecha_Compra").val());
                         
                         var xUSER = yID_USER, xSESION = ySESION_USER;

                         // Validando Informacion...
                         let xModelo_Mensajes = {
                             xCOD: 'Debe de digitar el Código del Artículo...',
                             xDESC: 'Debe de digitar la Descripción del Artículo...',
                             xOBS: 'Debe de digitar las Observaciones Adjuntas...'
                         };

                         let xModelo = {
                             xCOD: xCOD,
                             xDESC: xDESC,
                             xOBS: xOBS
                         };

                         let xModelo_Exc = ['xID'];
                                  
                         yMetodos[2](xModelo, xModelo_Mensajes, xModelo_Exc);
                 
                         if (xModelo.Mi_Mensaje){
                             yMetodos[1](xModelo.Mi_Mensaje, "warning"); return false;
                         }

                         if (parseFloat(xCOSTO) < 0){
                             yMetodos[1]('El Costo debe ser mayor o igual que Cero(0)...', "warning"); return false;
                         }

                         xID_TIPO_CLASE = parseInt($("#Cmb_Tipo_Clase").val()); xID_TIPO_MODELO = parseInt($("#Cmb_Tipo_Modelo").val()); ; 
                         xID_TIPO_MARCA = parseInt($("#Cmb_Tipo_Marca").val()); xID_TIPO_COLOR = parseInt($("#Cmb_Tipo_Color").val());
                         xID_TIPO_PROCEDENCIA = parseInt($("#Cmb_Tipo_Procedencia").val());

                         var uEncabezado = [];

                         uEncabezado.push({ ID: xID_REG_ARTICULOS, CODIGO: xCOD, SERIE: xSERIE, ID_CLASE: xID_TIPO_CLASE, ID_MODELO: xID_TIPO_MODELO, ID_MARCA: xID_TIPO_MARCA, ID_COLOR: xID_TIPO_COLOR, ID_PROCEDENCIA: xID_TIPO_PROCEDENCIA, DESCRIPCION: xDESC, COSTO: xCOSTO, FECHA_COMPRA: xCOMPRA, INGRESO: xINGRESO, OBSERVACIONES: xOBS, USER: xUSER });
                         
                         let Guardar_Registros_N1 = async (yDatos, lSESION) => {
                             let Mi_url = "Frm_Metodos_WEB_Services.aspx/Insertar_Actualizar_REG_ARTICULOS";
                             let Mis_Parametros = JSON.stringify({ xDatos: yDatos, xSESION: lSESION  });

                             let response = await yMetodos[4]('¿Desea Guardar el Registro?...', Mi_url, Mis_Parametros);
                             if (response.d.exito == false){
                                 xContenido = response.d.Mensaje; yMetodos[1](xContenido, "error"); 
                             } else { 
                                 xContenido = 'Acción Realizada con Exito...'; yMetodos[1](xContenido, "success"); 

                                 xID_REG_ARTICULOS = parseFloat(data.d.Mensaje);

                                 if (xBand_Reg_Articulos == 1) {
                                     $(".InputBox").each(function () {
                                         $(this).prop('value', '')
                                     });

                                     $(".ComboBox").each(function () {
                                         $(this).prop('selectedIndex', 0)
                                     });
           
                                     $("#Txt_Observaciones").val("ALTA DE ARTICULOS (" + $("#Dtp_Fecha").val() + ")");  
                                 } 

                                 setTimeout(function () {
                                     $('#Txt_Codigo').focus();
                                 }, 420);
                             } 
                         };
                        Guardar_Registros_N1(uEncabezado, xSESION);
                     },
                     class: "ui-button-spl2"
                 },
                {
                    text: "CERRAR",
                    click: function () {
                        $(this).dialog("close"); 

                        md_Modelo_01.Cargar_Mis_Articulos(md_Modelo_01.ID_Estado());
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
                    $(this).dialog('option', 'title', 'BAJA DE ARTICULOS - ' + xDESC_ARTICULOS);
                    
                    $("#Txt_Fecha_Baja").val(date_str); 
                    $("#Txt_Observacion_Baja").val('BAJA DE ARTICULOS: ' + xDESC_ARTICULOS);
                },
                buttons: [
                {
                    text: "GUARDAR",
                    click: function () {
                        var xOBS = ($.trim($("#Txt_Observacion_Baja").val()).length == 0) ? "BAJA DE ARTICULOS: " + xDESC_ARTICULOS : $.trim($("#Txt_Observacion_Baja").val()).toUpperCase();
                                    
                        var bFECHA_BAJA = yMetodos[7]($("#Txt_Fecha_Baja").val());
                        
                        var xUSER = yID_USER, xSESION = ySESION_USER;

                        // Ejecutando la Orden
                        let Baja_Registros_N1 = async (yN1, yBAJA, yOBS, lUSER, lSESION) => {
                            let Mi_url = "Frm_Metodos_WEB_Services.aspx/Baja_REG_ARTICULOS";
                            let Mis_Parametros = JSON.stringify({ xID: yN1, xBAJA: yBAJA, xOBS: yOBS, xUSER: lUSER, xSESION: lSESION  });

                            let response = await yMetodos[4]('¿Desea dar de BAJA al Registro?...', Mi_url, Mis_Parametros);
                            if (response.d.exito == false){
                                xContenido = response.d.Mensaje; yMetodos[1](xContenido, "error"); 
                            } else { 
                                xContenido = 'Acción Realizada con Exito...'; yMetodos[1](xContenido, "success"); 
                                // Limpiando Campos...
                                xID_REG_ARTICULOS = 0; 

                                $("#Txt_Fecha_Baja").val(date_str); 
                                $("#Txt_Observacion_Baja").val('BAJA DE ARTICULOS: ' + xDESC_ARTICULOS);
                            } 
                        };
                        Baja_Registros_N1(xID_REG_ARTICULOS, bFECHA_BAJA, xOBS, xUSER, xSESION);
                    },
                    class: "ui-button-spl2"
                },
                {
                    text: "CERRAR",
                    click: function () {
                        $(this).dialog("close"); 

                        md_Modelo_01.Cargar_Mis_Articulos(md_Modelo_01.ID_Estado());
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

                    // Listando las Opciones del Reporte
                    async function Datos_Reportes(yID){
                        // Mis Periodos
                        let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_Reportes_01';
                        let Mis_Parametros = JSON.stringify({ xID: yID });

                        let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                        if (Mis_Registros.d.exito == false){
                            xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                        } else { 
                            yMetodos[5]("Cmb_Informes", $.parseJSON(Mis_Registros.d.Mensaje));
                        }                        
                    };
                    Datos_Reportes(15);
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
                                    xParametros.push({ ID: 'xTitulo_06', DESCRIPCION: md_Modelo_01.ID_Estado() });
                                    xParametros.push({ ID: 'xTitulo_07', DESCRIPCION: xTipo_Rpt });


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

            $("#Frm_Documentos_Adjuntos").dialog({
                autoOpen: false, width: (lastWidth * 0.75), height: 'auto', modal: true, resizable: true, show: "slide", hide: "slide",
                dialogClass: "Estilos_Ventanas_Modales",
                position: "center",
                closeOnEscape: false,
                open: function () {
                    $(this).dialog('option', 'title', 'DOCUMENTOS ADJUNTOS');

                    listfiles(xID_REG_ARTICULOS, "1");
                },
                buttons: [
                {
                    text: "ELEGIR ARCHIVOS",
                    click: function () {
                        $("input").trigger("click");
                    },
                    class: "ui-button-spl2"
                },
                {
                    text: "GUARDAR",
                    click: function () {
                        xContenido = '¿Desea Guardar los Cambios Realizados en la Lista de Archivos Correspondientes?...';
                        alertify.confirm(xTitulo, '<p style="color:navy;"><strong>' + xContenido + '</strong></p>',
                            function () {
                                savefiles(xID_REG_ARTICULOS, "1", yID_USER, ySESION_USER);
                            },
                            function () {
                                xContenido = 'Acción Cancelada con Exito...'; alertify.success(xContenido);
                            }
                        ).setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'labels': { ok: 'SI', cancel: 'NO' } }).show();
                    },
                    class: "ui-button-spl2"
                },
                {
                    text: "CERRAR",
                    click: function () {
                        $(this).dialog("close");

                        md_Modelo_01.Cargar_Mis_Articulos(md_Modelo_01.ID_Estado());
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
    $("#Opt_02_01").css({ "background-color": "#F4FA58" });

    yTipo_User = $("#ROL_USER").val(); yUser = $("#NomUser").text(); yLog_User = $("#LOG_USER").val(); 
    yID_USER = parseFloat($("#ID_USER").val()); yID_ROL_USER = parseFloat($("#ID_ROL_USER").val()); ySESION_USER = parseFloat($("#SESION_USER").val()); 

    aCod_Opt = "Opt_02_01"; 
    if (yID_USER > 1) {
        Permisos_Usuario(yID_USER, yID_ROL_USER, aCod_Opt);
    }

    // Tabs Nº 01: Nivel Academico
    $("#Cmd_Nuevo").button({ icons: { primary: 'ui-icon-gear' } });
    $("#Cmd_Nuevo").find(".ui-icon").css({ "background-image": "url('css/images/operaciones/new.png')", "background-position": "0" });
    $("#Cmd_Imprimir").button({ icons: { primary: 'ui-icon-gear' } });
    $("#Cmd_Imprimir").find(".ui-icon").css({ "background-image": "url('css/images/operaciones/imprimir.png')", "background-position": "0" });

    
};

function Comportamiento_Objetos() {
    // Comportamiento de los Objetos
    // Productos N1
    $("#Dtp_Fecha").jqxDateTimeInput({ width: '100%', height: '30px', culture: 'es-ES', dropDownVerticalAlignment: "bottom", template: "primary", animationType: 'slide', formatString: 'dd/MM/yyyy', theme: 'arctic', textAlign: 'center' });
    $("#Dtp_Fecha_Compra").jqxDateTimeInput({ width: '100%', height: '30px', culture: 'es-ES', dropDownVerticalAlignment: "bottom", template: "primary", animationType: 'slide', formatString: 'dd/MM/yyyy', theme: 'arctic', textAlign: 'center' });
    $("#Txt_Fecha_Baja").jqxDateTimeInput({ width: '100%', height: '30px', culture: 'es-ES', dropDownVerticalAlignment: "bottom", template: "primary", animationType: 'slide', formatString: 'dd/MM/yyyy', theme: 'arctic', textAlign: 'center' });
        
    $('#Txt_Codigo').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Descripcion').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Descripcion').keypress(function (event) {
        if (event.which == 13) {
            $('#Dtp_Fecha').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Dtp_Fecha').bind('keypress', function (event) {
        if (event.which == 13) {
            $("#Cmb_Tipo_Clase").select().focus();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Dtp_Fecha').bind('keydown', function (event) {
        if (event.keyCode == 40) {
            $("#Cmb_Tipo_Clase").select().focus();
            event.preventDefault(); // Detiene el proceso..
        } else if (event.keyCode == 39) {
            $("#Cmb_Tipo_Clase").select().focus();
            event.preventDefault(); // Detiene el proceso..
        } else if (event.keyCode == 38) {
            //$("#Txt_Tipo_Clase").select().focus();
            event.preventDefault(); // Detiene el proceso..
        } else if (event.keyCode == 37) {
            //$("#Txt_Tipo_Clase").select().focus();
            event.preventDefault(); // Detiene el proceso..
        }
    });
        
    $('#Cmb_Tipo_Clase').keypress(function (event) {
        if (event.which == 13) {
            $('#Cmb_Tipo_Modelo').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Cmb_Tipo_Clase').change(function (event) {
        var xValor = $('#Cmb_Tipo_Clase').val(); // Valor del ID o VALUE
        var xTexto = $("#Cmb_Tipo_Clase option:selected").html(); // Valor del Texto Seleccionado

        xID_TIPO_CLASE = parseInt(xValor);
    });
    
    $('#Cmb_Tipo_Modelo').keypress(function (event) {
        if (event.which == 13) {
            $('#Cmb_Tipo_Marca').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Cmb_Tipo_Modelo').change(function (event) {
        var xValor = $('#Cmb_Tipo_Modelo').val(); // Valor del ID o VALUE
        var xTexto = $("#Cmb_Tipo_Modelo option:selected").html(); // Valor del Texto Seleccionado

        xID_TIPO_MODELO = parseInt(xValor);
    });
    
    $('#Cmb_Tipo_Marca').keypress(function (event) {
        if (event.which == 13) {
            $('#Cmb_Tipo_Color').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Cmb_Tipo_Marca').change(function (event) {
        var xValor = $('#Cmb_Tipo_Marca').val(); // Valor del ID o VALUE
        var xTexto = $("#Cmb_Tipo_Marca option:selected").html(); // Valor del Texto Seleccionado

        xID_TIPO_MARCA = parseInt(xValor);
    });
    
    $('#Cmb_Tipo_Color').keypress(function (event) {
        if (event.which == 13) {
            $('#Cmb_Tipo_Procedencia').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Cmb_Tipo_Color').change(function (event) {
        var xValor = $('#Cmb_Tipo_Color').val(); // Valor del ID o VALUE
        var xTexto = $("#Cmb_Tipo_Color option:selected").html(); // Valor del Texto Seleccionado

        xID_TIPO_COLOR = parseInt(xValor);
    });

    $('#Cmb_Tipo_Procedencia').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Costo').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Cmb_Tipo_Procedencia').change(function (event) {
        var xValor = $('#Cmb_Tipo_Procedencia').val(); // Valor del ID o VALUE
        var xTexto = $("#Cmb_Tipo_Procedencia option:selected").html(); // Valor del Texto Seleccionado

        xID_TIPO_PROCEDENCIA = parseInt(xValor);
    });

    $('#Txt_Costo').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Observaciones').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });
    
    $('#Txt_Observaciones').keypress(function (event) {
        if (event.which == 13) {
            $("#Frm_Datos").parents().find('button:nth-child(1)').focus();
            event.preventDefault(); // Detiene el proceso..
        }
    });
 
};

