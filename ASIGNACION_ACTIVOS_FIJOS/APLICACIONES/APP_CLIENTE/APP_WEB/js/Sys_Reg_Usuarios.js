// Codigo Principal de la Página...
// Variable Global
var xUbica = "", xElem = "", yMetodos = [], xSesion_Prueba = "", yUser = "", xBand_USUARIO = 0, xID_USUARIO = 0,  xID_ROL = 0, 
    xCODIGO_USUARIO = '', Mis_Tipos_Roles = [];

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
        yMetodos[7] = Valor.xConfig_Autocomplete;

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
                let lstObs = ['xReg_Total', 'g_current_page', 'search', 'g_nPagina', 'g_nextPage', 'g_nPorPagina', 'g_firstPage', 'g_previousPage', 'ID_Estado', 'ID_Paginas'];
                let lstObs_Arrays = ['Mis_Datos', 'g_lstTabla', 'lst_Estados', 'lst_Paginas'];

                yMetodos[0](self, lstObs); yMetodos[0](self, lstObs_Arrays, true);

                // Botones del Encabezado
                self.Agregar_Enc = function () {
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 1) {
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
                    xBand_USUARIO = 1; xID_USUARIO = 0;
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
                                           
                    $('#Frm_Det_Impresiones').dialog('open');
                };

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
            
                // Datos Iniciales...
                self.Datos_Encabezados = async () => {
                
                    // Tipos de Clases
                    let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_SYS_ROLES_AFECTABLE';
                    let Mis_Parametros = JSON.stringify({ });

                    let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                    if (Mis_Registros.d.exito == false){
                        xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                    } else { Mis_Tipos_Roles = $.parseJSON(Mis_Registros.d.Mensaje); } 

                };
                self.Datos_Encabezados();

                // Recuperando los Registros para la Cuadricula
                self.ID_Estado(1); 
                self.Datos_Registros = async ( yESTADO ) => {
                    // Mis Registros
                    if ((yESTADO == null) || (yESTADO == undefined)) {
                        self.Mis_Datos([]); self.xReg_Total(true); self.yReg_Total_Enc(false); 
                    } else {
                        $(".loader").fadeIn("slow");
                        let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_SYS_USUARIOS';
                        let Mis_Parametros = JSON.stringify({ xId_Estado: yESTADO });

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
                self.Datos_Registros(self.ID_Estado());

                self.load_Datos_USUARIOS = () => {
                    if ((self.ID_Estado() != null) || (self.ID_Estado() != undefined)){
                        self.Datos_Registros(self.ID_Estado());
                    } else { self.Mis_Datos([]); self.xReg_Total(true); }
                };

                
                //Seleccionando una Fila
                self.selectRow_Editar = function (item) {
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 1) {
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
                    xID_USUARIO = parseFloat(item.ID); yMetodos[5]("Cmb_Tipo_ROL", Mis_Tipos_Roles);

                    $('#Txt_Login').val(item.UID); $('#Txt_Password').val(item.PWD); 
                    $("#Cmb_Tipo_ROL").val(item.ID_ROL); xID_ROL = parseInt(item.ID_ROL);
                    $('#Txt_Nombre_Completo').val(item.DESCRIPCION); 

                    // Se Visualiza el DIV de la Gestión
                    xBand_USUARIO = 2;
                    $('#Frm_Datos').dialog('open');
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
                        let Mi_url = "Frm_Metodos_WEB_Services.aspx/Reactivar_SYS_USUARIOS";
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

                self.selectRow_Baja = function(item){
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 1) {
                        if (aPermisos.length > 0) {
                            if (aPermisos[0].ACT == '0') {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }
                        
                    
                    if (parseInt(item.ID_ESTADO) == 0) {
                        xContenido = 'Este Registro ya fue dado de BAJA...';
                        yMetodos[1](xContenido, "warning"); return false;
                    }

                    // Se recuperan los Datos...
                    xID_USUARIO = parseFloat(item.ID); xCODIGO_USUARIO = item.CODIGO;

                    $('#Frm_Baja').dialog('open');
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
 
            
            // Ventanas Modales
            $("#Frm_Datos").dialog({
                autoOpen: false, width: (lastWidth * 0.50), height: 'auto', modal: true, resizable: true, show: "slide", hide: "slide",
                dialogClass: "Estilos_Ventanas_Modales",
                position: "center",
                closeOnEscape: false,
                open: function () {
                    $(this).dialog('option', 'title', (xBand_USUARIO == 1) ? 'AGREGAR REGISTRO NUEVO' : 'EDITAR REGISTRO EXISTENTE');

                    if (xBand_USUARIO == 1) {
                        yMetodos[5]("Cmb_Tipo_ROL", Mis_Tipos_Roles);

                        $(".InputBox").each(function () {
                            $(this).prop('value', '')
                        });

                    } 

                    setTimeout(function () {
                        $('#Txt_Login').focus();
                    }, 420);
                },
                buttons: [
                {
                    text: "GUARDAR",
                    click: function () {
                        // Datos del Encabezado
                        var xDESC = ($.trim($("#Txt_Nombre_Completo").val()).length == 0) ? "" : $.trim($("#Txt_Nombre_Completo").val()).toUpperCase();
                        var xUID = ($.trim($("#Txt_Login").val()).length == 0) ? "" : $.trim($("#Txt_Login").val()).toUpperCase();
                        var xPWD = ($.trim($("#Txt_Password").val()).length == 0) ? "" : $.trim($("#Txt_Password").val()).toUpperCase();

                        var xSESION = ySESION_USER;

                        // Validando Informacion...
                        let xModelo_Mensajes = {
                            xDESC: 'Debe de digitar el Nombre Completo del Usuario...',
                            xUID: 'Debe de digitar el Logín del Usuario...',
                            xPWD: 'Debe de digitar la Clave del Usuario...'
                        };

                        let xModelo = {
                            xDESC: xDESC,
                            xUID: xUID,
                            xPWD: xPWD
                        };

                        let xModelo_Exc = ['xID'];
                                  
                        yMetodos[2](xModelo, xModelo_Mensajes, xModelo_Exc);
                 
                        if (xModelo.Mi_Mensaje){
                            yMetodos[1](xModelo.Mi_Mensaje, "warning"); return false;
                        }

                        xID_ROL = parseInt($("#Cmb_Tipo_ROL").val());
                        
                        var uEncabezado = [];

                        uEncabezado.push({ ID: xID_USUARIO, ROL: xID_ROL, UID: xUID, PWD: xPWD, NOMBRE: xDESC });

                        // Ejecutando la Orden
                        let Guardar_Registros = async (yDatos, lSESION) => {
                            let Mi_url = "Frm_Metodos_WEB_Services.aspx/Insertar_Actualizar_SYS_USUARIOS";
                            let Mis_Parametros = JSON.stringify({ xDatos: yDatos, xSESION: lSESION  });

                            let response = await yMetodos[4]('¿Desea Guardar el Registro?...', Mi_url, Mis_Parametros);
                            if (response.d.exito == false){
                                xContenido = response.d.Mensaje; yMetodos[1](xContenido, "error"); 
                            } else { 
                                xContenido = 'Acción Realizada con Exito...'; yMetodos[1](xContenido, "success"); 
                                xID_USUARIO = parseFloat(response.d.Mensaje);
                                                                
                                if (xBand_USUARIO == 1) {
                                    $(".InputBox").each(function () {
                                        $(this).prop('value', '')
                                    });
                                                                        
                                    xID_USUARIO = 0; 
                                } 

                                setTimeout(function () {
                                    $('#Txt_Login').focus();
                                }, 420);
                            } 
                        };
                        Guardar_Registros(uEncabezado, xSESION);
                    },
                    class: "ui-button-spl2"
                },
                {
                    text: "CERRAR",
                    click: function () {
                        $(this).dialog("close"); 
                        
                        md_Modelo_01.Datos_Registros(md_Modelo_01.ID_Estado());
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
                    $(this).dialog('option', 'title', 'BAJA AL REGISTRO Nº - ' + xCODIGO_USUARIO);
                    
                    $("#Txt_Fecha_Baja").val(date_str); 
                    $("#Txt_Observacion_Baja").val('');
                },
                buttons: [
                {
                    text: "GUARDAR",
                    click: function () {
                        var xOBS = ($.trim($("#Txt_Observacion_Baja").val()).length == 0) ? "BAJA AL REGISTRO Nº : " + xCODIGO_USUARIO : $.trim($("#Txt_Observacion_Baja").val()).toUpperCase();
                                    
                        var bFECHA_BAJA = yMetodos[6]($("#Txt_Fecha_Baja").val());
                        
                        var xUSER = yID_USER, xSESION = ySESION_USER;

                        // Ejecutando la Orden
                        let Baja_Registros = async (lID, lFECHA, lOBS, lUSER, lSESION) => {
                            let Mi_url = "Frm_Metodos_WEB_Services.aspx/Baja_SYS_USUARIOS";
                            let Mis_Parametros = JSON.stringify({ xID: lID, xBAJA: lFECHA, xOBS: lOBS, xUSER: lUSER, xSESION: lSESION  });

                            let response = await yMetodos[4]('¿Desea dar de BAJA al Registro?...', Mi_url, Mis_Parametros);
                            if (response.d.exito == false){
                                xContenido = response.d.Mensaje; yMetodos[1](xContenido, "error"); 
                            } else { 
                                xContenido = 'Acción Realizada con Exito...'; yMetodos[1](xContenido, "success"); 

                                // Limpiando Campos...
                                xID_ROL = 0; xCODIGO_USUARIO = ''; xID_USUARIO = 0;

                                $("#Txt_Fecha_Baja").val(date_str); 
                                $("#Txt_Observacion_Baja").val('');
                            } 
                        };
                        Baja_Registros(xID_USUARIO, bFECHA_BAJA, xOBS, xUSER, xSESION);
                    },
                    class: "ui-button-spl2"
                },
                {
                text: "CERRAR",
                click: function () {
                    $(this).dialog("close"); 

                    md_Modelo_01.Datos_Registros(md_Modelo_01.ID_Estado());
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
                    Datos_Reportes(17);
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
    $("#Opt_04_02").css({ "background-color": "#F4FA58" });
            
    yTipo_User = $("#ROL_USER").val(); yUser = $("#NomUser").text(); yLog_User = $("#LOG_USER").val(); 
    yID_USER = parseFloat($("#ID_USER").val()); yID_ROL_USER = parseFloat($("#ID_ROL_USER").val()); ySESION_USER = parseFloat($("#SESION_USER").val()); 

    aCod_Opt = "Opt_04_02"; 
    if (yID_USER > 1) {
        Permisos_Usuario(yID_USER, yID_ROL_USER, aCod_Opt);
    }

    // Tabs Nº 01: 
    $("#Cmd_Nuevo").button({ icons: { primary: 'ui-icon-gear' } });
    $("#Cmd_Nuevo").find(".ui-icon").css({ "background-image": "url('css/images/operaciones/new.png')", "background-position": "0" });
    $("#Cmd_Imprimir").button({ icons: { primary: 'ui-icon-gear' } });
    $("#Cmd_Imprimir").find(".ui-icon").css({ "background-image": "url('css/images/operaciones/imprimir.png')", "background-position": "0" });
    
};

function Comportamiento_Objetos(){
    // Comportamiento de los Objetos
    $("#Txt_Fecha_Baja").jqxDateTimeInput({ width: '100%', height: '30px', culture: 'es-ES', dropDownVerticalAlignment: "bottom", template: "primary", animationType: 'slide', formatString: 'dd/MM/yyyy', theme: 'arctic', textAlign: 'center' });

    $('#Txt_Login').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Password').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Password').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Nombre_Completo').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });
        
    $('#Txt_Nombre_Completo').keypress(function (event) {
        if (event.which == 13) {
            $('#Cmb_Tipo_ROL').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Cmb_Tipo_ROL').keypress(function (event) {
        if (event.which == 13) {
            $("#Frm_Datos").parents().find('button:nth-child(1)').focus();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Cmb_Tipo_ROL').change(function (event) {
        var xValor = $('#Cmb_Tipo_ROL').val(); // Valor del ID o VALUE
        var xTexto = $("#Cmb_Tipo_ROL option:selected").html(); // Valor del Texto Seleccionado

        xID_ROL = parseInt(xValor);
    });
};
