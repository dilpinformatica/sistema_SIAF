// Codigo Principal de la Página...
// Variable Global
var xUbica = "", xElem = "", yMetodos = [], xSesion_Prueba = "", yUser = "", xID_SESION = 0;

// Llamada del Archivo Javascript por Import
let xMetodos = import('./Sys_Funciones_Generales.js');

$(document).ready(function () {  
    
    // Métodos Principales...
    xMetodos.then(function(Valor){
        yMetodos[0] = Valor.xcreateObservables;
        yMetodos[1] = Valor.xMi_Mensaje;
        yMetodos[2] = Valor.xValidateSave;
        yMetodos[3] = Valor.xListar;
        yMetodos[4] = Valor.xGuardar;
        yMetodos[5] = Valor.xLlenar_Combos;
        yMetodos[6] = Valor.xObtener_Fecha;

        try {
            /* --- Encabezado de la Pagina ----- */
            // Funcion de Configuracion Inicial y Comportamiento de los Objetos
            xUbica = GetUserXmlInfo('LastTabClicked'); xElem = xUbica.split('º');
            xSesion_Prueba = GetSessionValue("Data_Prueba"); 
            Configuracion_Inicial(); Comportamiento_Objetos(); 
                        
            // Encabezado Principal
            var xMi_Modelo_01 = function () {
                var self = this;

                // Declaración de los Observables...
                let lstObs = ['xReg_Total', 'xReg_Total_02', 'g_current_page', 'search', 'g_nPagina', 'g_nextPage', 'g_nPorPagina', 'g_firstPage', 'g_previousPage', 
                    'ID_Estado', 'ID_Usuario', 'g_current_page_02', 'search_02', 'g_nPagina_02', 'g_nextPage_02', 'g_nPorPagina_02', 'g_firstPage_02', 'g_previousPage_02'];
                let lstObs_Arrays = ['Mis_Datos', 'g_lstTabla', 'g_lstTabla_02', 'lst_Usuarios', 'Mis_Datos_02'];

                yMetodos[0](self, lstObs); yMetodos[0](self, lstObs_Arrays, true);
                                
                // Usuarios del Sistema...
                self.Datos_Usuarios = async () => {
                    // Mis Registros
                    let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_SYS_USUARIOS_AFECTABLE';
                    let Mis_Parametros = JSON.stringify({ });

                    let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                    if (Mis_Registros.d.exito == false){
                        xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                    } else { 
                        self.lst_Usuarios($.parseJSON(Mis_Registros.d.Mensaje));
                    } 
                };
                self.Datos_Usuarios();
                                        
                // Recuperando los Registros para la Cuadricula
                self.ID_Estado(1); 
                self.Datos_Registros = async ( yUSER ) => {
                    // Mis Registros
                    if ((yUSER == null) || (yUSER == undefined)) {
                        self.Mis_Datos([]); self.xReg_Total(true); 
                    } else {
                        $(".loader").fadeIn("slow");
                        let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_Sesiones';
                        let Mis_Parametros = JSON.stringify({ xUser: yUSER });

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
                self.Datos_Registros(self.ID_Usuario());

                self.load_Datos_Sesiones = () => {
                    if ((self.ID_Usuario() != null) || (self.ID_Usuario() != undefined)){
                        self.Datos_Registros(self.ID_Usuario());
                    } else { self.Mis_Datos([]); self.xReg_Total(true); self.Mis_Datos_02([]); self.xReg_Total_02(true); }
                };

                
                //Seleccionando una Fila
                self.selectRow_Seleccionar = function (item) {
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    xID_SESION = parseFloat(item.ID); 
                    
                    self.Cargar_Mis_Datos_Bitacoras(xID_SESION);
                };
                
                self.selectRecord = function (item, indice) {
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


                // La Otra Tabla...
                // Recuperando los Registros para la Cuadricula
                self.Cargar_Mis_Datos_Bitacoras = async ( xSESION ) => {
                    if ((xSESION == null) || (xSESION == undefined)){
                        self.Mis_Datos_02([]); self.xReg_Total_02(true);
                    } else {
                        $(".loader").fadeIn("slow");
                        let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_Bitacoras';
                        let Mis_Parametros = JSON.stringify({ xSesion: xSESION });

                        let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                        if (Mis_Registros.d.exito == false){
                            xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); self.Mis_Datos_02([]); self.xReg_Total_02(true);
                        } else { 
                            self.Mis_Datos_02($.parseJSON(Mis_Registros.d.Mensaje)); 
                            if (self.Mis_Datos_02().length > 0){ self.xReg_Total_02(false); } else { self.xReg_Total_02(true); }
                        } 
                        $(".loader").fadeOut("slow");
                    }                    
                };

                //Paginación de la Cuadricula
                self.g_current_page_02(1); self.search_02(''); self.g_nPagina_02(1); self.g_nPorPagina_02(15); self.g_firstPage_02(1);

                self.g_lastPage_02 = ko.computed(function () {
                    var dt = self.Mis_Datos_02.filtered(self.search_02());
                    self.g_current_page_02(1);
                    g_firstEvent_02();
                    self.g_lstTabla_02(ko.mapping.toJS(dt));
                    var div = self.g_lstTabla_02().length / self.g_nPorPagina_02();
                    var divFloor = Math.floor(div);
                    if (div > divFloor) {
                        div = divFloor + 1;
                    }

                    if (div == 1) {
                        g_unicEvent_02();
                    }

                    return div;
                }, this);

                self.g_visible_pagination_02 = ko.computed(function () {
                    if (self.g_lstTabla_02().length == 0) {
                        $("#g_divPage_02").addClass("invisible");
                    }
                    else {
                        $("#g_divPage_02").removeClass("invisible");
                    }
                }, this);

                self.g_Paginacion_02 = ko.computed(function () {
                    var page = (parseInt(self.g_current_page_02()) * parseInt(self.g_nPorPagina_02())) - parseInt(self.g_nPorPagina_02());

                    $("#g_inputPage_02").val('Total Reg.: ' + self.g_lstTabla_02().length + ' - Pag. ' + self.g_current_page_02() + ' de ' + self.g_lastPage_02());

                    if (parseInt(self.g_current_page_02(), 10) < parseInt(self.g_lastPage_02(), 10)) {
                        $("#g_divPage_02").find("span.last_02").removeClass("disabled");
                        $("#g_divPage_02").find("span.next_02").removeClass("disabled");
                    }

                    return self.g_lstTabla_02.slice(page, page + parseInt(self.g_nPorPagina_02()));
                });

                $("#g_last_02").click(function (evt) {
                    if (!$("#g_last_02").hasClass("disabled")) {
                        self.g_current_page_02(self.g_lastPage_02());
                        $("#g_inputPage_02").val('Total Reg.: ' + self.g_lstTabla_02().length + ' - Pag. ' + self.g_current_page_02() + ' de ' + self.g_lastPage_02());
                        g_lastEvent_02();
                    }
                });

                $("#g_first_02").click(function (evt) {
                    if (!$("#g_first_02").hasClass("disabled")) {
                        self.g_current_page_02(self.g_firstPage_02());
                        $("#g_inputPage_02").val('Total Reg.: ' + self.g_lstTabla_02().length + ' - Pag. ' + self.g_current_page_02() + ' de ' + self.g_lastPage_02());
                        g_firstEvent_02();
                    }
                });

                $("#g_previous_02").click(function (evt) {
                    if (!$("#g_previous_02").hasClass("disabled")) {
                        var g_current_page = parseInt(self.g_current_page_02(), 10);
                        self.g_previousPage_02(g_current_page - 1);
                        self.g_current_page_02(self.g_previousPage_02());
                        $("#g_inputPage_02").val('Total Reg.: ' + self.g_lstTabla_02().length + ' - Pag. ' + self.g_current_page_02() + ' de ' + self.g_lastPage_02());

                        $("#g_divPage_02").find("span.last_02").removeClass("disabled");
                        $("#g_divPage_02").find("span.next_02").removeClass("disabled");

                        if (self.g_current_page_02() == self.g_firstPage_02()) {
                            $("#g_divPage_02").find("span.first_02").addClass("disabled");
                            $("#g_divPage_02").find("span.previous_02").addClass("disabled");
                        }
                    }
                });

                $("#g_next_02").click(function (evt) {
                    if (!$("#g_next_02").hasClass("disabled")) {
                        var g_current_page = parseInt(self.g_current_page_02(), 10);
                        self.g_nextPage_02(g_current_page + 1);
                        self.g_current_page_02(self.g_nextPage_02());
                        $("#g_inputPage_02").val('Total Reg.: ' + self.g_lstTabla_02().length + ' - Pag. ' + self.g_current_page_02() + ' de ' + self.g_lastPage_02());

                        $("#g_divPage_02").find("span.first_02").removeClass("disabled");
                        $("#g_divPage_02").find("span.previous_02").removeClass("disabled");

                        if (self.g_current_page_02() == self.g_lastPage_02()) {
                            $("#g_divPage_02").find("span.last_02").addClass("disabled");
                            $("#g_divPage_02").find("span.next_02").addClass("disabled");
                        }
                    }
                });

                $("#g_inputPage_02").bind('focus mouseup', function (event) {
                    var g_current_page = parseInt(self.g_current_page_02(), 10);

                    if (event.type === 'focus') {
                        $(this).val(g_current_page).select();
                    }

                    if (event.type === 'mouseup') {
                        $(this).val(g_current_page).select();
                        return false;
                    }

                    if (self.g_current_page_02() > self.g_firstPage_02() && self.g_current_page_02() < self.g_lastPage_02()) {
                        g_allEvent_02();
                    }
                });

                $("#g_inputPage_02").bind('blur keydown', function (event) {
                    if (event.keyCode === 13 || event.type === 'blur') {
                        if (isNaN($(this).val()) || $(this).val() < self.g_firstPage_02() || $(this).val() > self.g_lastPage_02()) {
                            $(this).val('Total Reg.: ' + self.g_lstTabla_02().length + ' - Pag. ' + self.g_current_page_02() + ' de ' + self.g_lastPage_02());
                        }
                        else {
                            var g_current_page = parseInt($(this).val(), 10);
                            self.g_current_page_02(g_current_page);
                            $(this).val('Total Reg.: ' + self.g_lstTabla_02().length + ' - Pag. ' + self.g_current_page_02() + ' de ' + self.g_lastPage_02());

                            if (self.g_current_page_02() == self.g_firstPage_02() && self.g_current_page_02() != self.g_lastPage_02()) { g_firstEvent_02() };
                            if (self.g_current_page_02() == self.g_lastPage_02() && self.g_current_page_02() != self.g_firstPage_02()) { g_lastEvent_02() };
                        }

                        if (self.g_current_page_02() > self.g_firstPage_02() && self.g_current_page_02() < self.g_lastPage_02()) {
                            g_allEvent_02();
                        }
                    }

                });

                function g_unicEvent_02() {
                    $("#g_divPage_02").find("span.first_02").addClass("disabled");
                    $("#g_divPage_02").find("span.previous_02").addClass("disabled");
                    $("#g_divPage_02").find("span.last_02").addClass("disabled");
                    $("#g_divPage_02").find("span.next_02").addClass("disabled");
                }

                function g_firstEvent_02() {
                    $("#g_divPage_02").find("span.first_02").addClass("disabled");
                    $("#g_divPage_02").find("span.previous_02").addClass("disabled");
                    $("#g_divPage_02").find("span.last_02").removeClass("disabled");
                    $("#g_divPage_02").find("span.next_02").removeClass("disabled");
                }

                function g_lastEvent_02() {
                    $("#g_divPage_02").find("span.last_02").addClass("disabled");
                    $("#g_divPage_02").find("span.next_02").addClass("disabled");
                    $("#g_divPage_02").find("span.first_02").removeClass("disabled");
                    $("#g_divPage_02").find("span.previous_02").removeClass("disabled");
                }

                function g_allEvent_02() {
                    $("#g_divPage_02").find("span.first_02").removeClass("disabled");
                    $("#g_divPage_02").find("span.previous_02").removeClass("disabled");
                    $("#g_divPage_02").find("span.last_02").removeClass("disabled");
                    $("#g_divPage_02").find("span.next_02").removeClass("disabled");
                }

                function g_limpiarEvent_02() {
                    self_02.g_current_page_02(1);

                    if (!$("#g_divPage_02").hasClass("invisible")) { $("#g_divPage_02").addClass("invisible"); }
                    if (!$("#g_divPage_02").find("span.first_02").hasClass("disabled")) { $("#g_divPage_02").find("span.first_02").addClass("disabled"); }
                    if (!$("#g_divPage_02").find("span.previous_02").hasClass("disabled")) { $("#g_divPage_02").find("span.previous_02").addClass("disabled"); }
                    if (!$("#g_divPage_02").find("span.last_02").hasClass("disabled")) { $("#g_divPage_02").find("span.last_02").addClass("disabled"); }
                    if (!$("#g_divPage_02").find("span.next_02").hasClass("disabled")) {
                        $("#g_divPage_02").find("span.next_02").addClass("disabled");
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
          

            



            $("#Frm_Det_Impresiones").dialog({
                autoOpen: false, width: (lastWidth * 0.60), height: 'auto', modal: true, resizable: true, show: "slide", hide: "slide",
                dialogClass: "Estilos_Ventanas_Modales",
                position: "center",
                closeOnEscape: false,
                open: function () {
                    $(this).dialog('option', 'title', 'IMPRESIONES GENERALES');
                                        
                    // Listando las Opciones del Reporte
                    async function Datos_Reportes(yId) {
                        // Mis Periodos
                        let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_Reportes_01';
                        let Mis_Parametros = JSON.stringify({ xID: yId });

                        let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                        if (Mis_Registros.d.exito == false){
                            xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                        } else { 
                            yMetodos[5]("Cmb_Informes", $.parseJSON(Mis_Registros.d.Mensaje));
                        }                        
                    };
                    Datos_Reportes(19);
                },
                buttons: [
                {
                    text: "IMPRIMIR",
                    click: function () {
                        xContenido = '¿Desea Imprimir?...';
                        alertify.confirm(xTitulo, '<p style="color:navy;"><strong>' + xContenido + '</strong></p>',
                            function () {
                                async function Mi_Reportes() {
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
                                    xParametros.push({ ID: 'xTitulo_07', DESCRIPCION: md_Modelo_01.ID_Usuario() });
                                    xParametros.push({ ID: 'xTitulo_08', DESCRIPCION: xTipo_Rpt });

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
    $("#Opt_04").click();
    $("#Opt_04_05").css({ "background-color": "#F4FA58" });
            
    yTipo_User = $("#ROL_USER").val(); yUser = $("#NomUser").text(); yLog_User = $("#LOG_USER").val(); 
    yID_USER = parseFloat($("#ID_USER").val()); yID_ROL_USER = parseFloat($("#ID_ROL_USER").val()); ySESION_USER = parseFloat($("#SESION_USER").val()); 

    aCod_Opt = "Opt_04_05"; 
    if (yID_USER > 1) {
        Permisos_Usuario(yID_USER, yID_ROL_USER, aCod_Opt);
    }
        
};

function Comportamiento_Objetos(){
    // Comportamiento de los Objetos
        
};
