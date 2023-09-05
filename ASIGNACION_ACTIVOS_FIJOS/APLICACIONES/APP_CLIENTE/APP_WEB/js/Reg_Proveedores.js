// Variable Global
var xUbica = "", xElem = "", yMetodos = [], xSesion_Prueba = "", yUser = "", xBand_Proveedores = 0, xID_PROVEEDOR = 0, xNOMBRE_COMPLETO = '', xCODIGO_PROVEEDOR = '',
    xID_CONTACTO_PROVEEDOR = 0, Mis_Tipos_Proveedores = [], Mis_Tipos_Sexos = [], Mis_Tipos_Contactos = [];

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
        yMetodos[7] = Valor.xEliminar;
        yMetodos[8] = Valor.xObtener_Fecha;

        try {
            /* --- Encabezado de la Pagina ----- */
            // Funcion de Configuracion Inicial y Comportamiento de los Objetos
            xUbica = GetUserXmlInfo('LastTabClicked'); xElem = xUbica.split('º');
            xSesion_Prueba = GetSessionValue("Data_Prueba");
            Configuracion_Inicial(); Comportamiento_Objetos(); 
            
            // Encabezado Principal
            var xMi_Modelo_01 = function (){
                var self = this;

                // Declaración de los Observables...
                let lstObs = ['xReg_Total', 'g_current_page', 'search', 'g_nPagina', 'g_nextPage', 'g_nPorPagina', 'g_firstPage', 'g_previousPage', 'ID_Estado', 'ID_Paginas'];
                let lstObs_Arrays = ['Mis_Datos', 'g_lstTabla', 'lst_Estados', 'lst_Paginas'];

                yMetodos[0](self, lstObs); yMetodos[0](self, lstObs_Arrays, true);

                self.lst_Estados = ko.observableArray([
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
                                        
                    if (parseInt(self.ID_Estado()) != 1) {
                        xContenido = 'Debe de tener Seleccionado la condición de ALTA para poder Agregar un Registro...';
                        yMetodos[1](xContenido, "warning"); return false;
                    }
                    
                    // Se Visualiza el DIV de la Gestión
                    xBand_Proveedores = 1; xID_PROVEEDOR = 0;
                    $('#Frm_Datos').dialog('open');
                }

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
                }


                // Datos Iniciales...
                self.Datos_Encabezados = async () => {
                    
                    // Tipos de Proveedores
                    let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_CAT_TIPO_PROVEEDOR_AFECTABLE';
                    let Mis_Parametros = JSON.stringify({ });

                    let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                    if (Mis_Registros.d.exito == false){
                        xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                    } else { Mis_Tipos_Proveedores = $.parseJSON(Mis_Registros.d.Mensaje); } 

                    // Tipos de Contactos de Proveedores
                    Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_CAT_TIPO_CONTACTO_PROVEEDOR_AFECTABLE';
                    Mis_Parametros = JSON.stringify({ });

                    Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                    if (Mis_Registros.d.exito == false){
                        xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                    } else { Mis_Tipos_Contactos = $.parseJSON(Mis_Registros.d.Mensaje); } 

                    // Tipos de Sexos
                    Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_CAT_TIPO_SEXOS_AFECTABLE';
                    Mis_Parametros = JSON.stringify({ });

                    Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                    if (Mis_Registros.d.exito == false){
                        xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); 
                    } else { Mis_Tipos_Sexos = $.parseJSON(Mis_Registros.d.Mensaje); } 

                };
                self.Datos_Encabezados();


                // Recuperando los Registros para la Cuadricula
                self.ID_Estado(1);
                self.Cargar_Mis_Datos_Proveedores = async ( yESTADO ) => {
                    // Mis Registros
                    if ((yESTADO == null) || (yESTADO == undefined)){
                        self.Mis_Datos([]); self.xReg_Total(true);
                    } else {
                        $(".loader").fadeIn("slow");
                        let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_REG_PROVEEDORES';
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
                self.Cargar_Mis_Datos_Proveedores(self.ID_Estado());

                self.load_Datos_Proveedores = function () {
                    if ((self.ID_Estado() != null) || (self.ID_Estado() != undefined)){
                        self.Cargar_Mis_Datos_Proveedores(self.ID_Estado());
                    } else { self.Mis_Datos([]); self.xReg_Total(true); }
                };

                //Seleccionando una Fila
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

                self.selectRow_Editar = function(item){
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

                    $("#Txt_Identificacion_01").jqxMaskedInput('clear'); $("#Txt_Identificacion_02").jqxMaskedInput('clear'); 
                    $("#Txt_Tel").jqxMaskedInput('clear'); $("#Txt_Cel_T").jqxMaskedInput('clear'); $("#Txt_Cel_C").jqxMaskedInput('clear'); 

                    yMetodos[5]("Cmb_Tipo", Mis_Tipos_Proveedores); yMetodos[5]("Cmb_Sexo", Mis_Tipos_Sexos);

                    // Se recuperan los Datos...
                    xID_PROVEEDOR = parseFloat(item.ID); xCODIGO_PROVEEDOR = item.CODIGO; xNOMBRE_COMPLETO = item.NOMBRE_COMPLETO;
                                        
                    $("#Txt_Razon_Social").val(item.RAZON_SOCIAL); $("#Txt_Ingreso").val(item.INGRESO);
                    $("#Txt_Primer_Nombre").val(item.NOM_01); $("#Txt_Primer_Apellido").val(item.APE_01);
                    $("#Txt_Segundo_Nombre").val(item.NOM_02); $("#Txt_Segundo_Apellido").val(item.APE_02);
                    $("#Txt_Direccion").val(item.DIR); $("#Cmb_Sexo").val(item.ID_SEXO); $("#Cmb_Tipo").val(item.ID_TIPO);
                    $("#Txt_Tel").val(item.TEL); $("#Txt_Cel_T").val(item.CEL_T); $("#Txt_Cel_C").val(item.CEL_C);  $("#Txt_Email").val(item.EMAIL);
                                                       
                    if (item.IDENTIFICACION == ''){
                        $("#Txt_Identificacion_01").jqxMaskedInput('clear'); $("#Txt_Identificacion_02").jqxMaskedInput('clear'); 
                    }
                    
                    if (parseInt(item.ID_TIPO) == 1){
                        $("#Txt_Identificacion_01").val(item.IDENTIFICACION); 
                        $(".xOpt_01").show(); $(".xOpt_02").hide(); 
                    } else if (parseInt(item.ID_TIPO) == 2){
                        $("#Txt_Identificacion_02").val(item.IDENTIFICACION); 
                        $(".xOpt_01").hide(); $(".xOpt_02").show(); 
                    }

                    // Se Visualiza el DIV de la Gestión
                    xBand_Proveedores = 2;
                    $('#Frm_Datos').dialog('open');
                };
                                
                self.selectRow_Contactos = function(item){
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 1) {
                        if (aPermisos.length > 0) {
                            if ((aPermisos[0].INS == '0') || (aPermisos[0].ACT == '0')) {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }

                    if (parseInt(item.ID_ESTADO) == 0) {
                        xContenido = 'No puede Editar este Registro porque está de BAJA...';
                        yMetodos[1](xContenido, "warning"); return false;
                    }
                                        
                    // Se recuperan los Datos...
                    xID_PROVEEDOR = parseFloat(item.ID); xCODIGO_PROVEEDOR = item.CODIGO; xNOMBRE_COMPLETO = item.NOMBRE_COMPLETO;

                    // Se Visualiza el DIV de la Gestión
                    $('#Frm_Datos_Contactos').dialog('open');
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
                    xID_PROVEEDOR = parseFloat(item.ID); xCODIGO_PROVEEDOR = item.CODIGO; xNOMBRE_COMPLETO = item.NOMBRE_COMPLETO;

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
                        let Mi_url = "Frm_Metodos_WEB_Services.aspx/Reactivar_REG_PROVEEDORES";
                        let Mis_Parametros = JSON.stringify({ xID: lID, xUSER: lUSER, xSESION: lSESION  });

                        let response = await yMetodos[4]('¿Desea REACTIVAR al Registro actual?...', Mi_url, Mis_Parametros);
                        if (response.d.exito == false){
                            xContenido = response.d.Mensaje; yMetodos[1](xContenido, "error"); 
                        } else { 
                            xContenido = 'Acción Realizada con Exito...'; yMetodos[1](xContenido, "success"); 
                            self.ID_Estado(1); self.Cargar_Mis_Datos_Proveedores(self.ID_Estado());
                        } 
                    };
                    Reactivar_Registros(parseFloat(item.ID), yID_USER, ySESION_USER);
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


            // Ventana Nº 02: Contactos...
            var xMi_Modelo_02 = function (){
                var self_02 = this;
                             
                // Recuperando los Registros para la Cuadricula
                self_02.xReg_Total_02 = ko.observable(true);
                self_02.Mis_Datos_02 = ko.observableArray([]);

                self_02.Cargar_Mis_Datos_Contactos = async ( xPROV ) => {
                    if ((xPROV == null) || (xPROV == undefined)){
                        self_02.Mis_Datos_02([]); self_02.xReg_Total_02(true);
                    } else {
                        $(".loader").fadeIn("slow");
                        let Mi_url = 'Frm_Metodos_WEB_Services.aspx/Listar_REG_CONTACTOS_x_PROVEEDOR';
                        let Mis_Parametros = JSON.stringify({ xProveedor: xPROV });

                        let Mis_Registros = await yMetodos[3](Mi_url, Mis_Parametros);
                        if (Mis_Registros.d.exito == false){
                            xContenido = Mis_Registros.d.Mensaje; yMetodos[1](xContenido, "error"); self_02.Mis_Datos_02([]); self_02.xReg_Total_02(true);
                        } else { 
                            self_02.Mis_Datos_02($.parseJSON(Mis_Registros.d.Mensaje)); 
                            if (self_02.Mis_Datos_02().length > 0){ self_02.xReg_Total_02(false); } else { self_02.xReg_Total_02(true); }
                        } 
                        $(".loader").fadeOut("slow");
                    }                    
                };
                        
                //Seleccionando una Fila
                self_02.selectRecord_Datos_02 = function(item, indice)
                {
                    self_02.g_Paginacion_02().forEach(function(valor, index){
                        if(valor.color){
                            $('#' + (index + 1)).removeClass('MiColor')
                            valor.color = false;
                        }
                    })

                    $('#' + indice).addClass('MiColor')
                    item.color = true;
                };
                         
                self_02.selectRow_Reg_Contacto = function(item){
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 1) {
                        if (aPermisos.length > 0) {
                            if ((aPermisos[0].INS == '0') || (aPermisos[0].ACT == '0')) {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }

                    
                    // Se recuperan los Datos...
                    xID_CONTACTO_PROVEEDOR = parseFloat(item.ID); 

                    $("#Txt_Tel_Contacto").jqxMaskedInput('clear'); $("#Txt_Cel_T_Contacto").jqxMaskedInput('clear'); $("#Txt_Cel_C_Contacto").jqxMaskedInput('clear'); 
                    $("#Txt_Identificacion_Contacto").jqxMaskedInput('clear');
                    
                    $("#Txt_Identificacion_Contacto").val(item.CEDULA);

                    if (item.CEDULA == ''){
                        $("#Txt_Identificacion_Contacto").jqxMaskedInput('clear'); 
                    }

                    yMetodos[5]("Cmb_Tipo_Contacto", Mis_Tipos_Contactos); yMetodos[5]("Cmb_Sexo_Contacto", Mis_Tipos_Sexos);

                    $("#Txt_Primer_Nombre_Contacto").val(item.PRIMER_NOMBRE); $("#Txt_Segundo_Nombre_Contacto").val(item.SEGUNDO_NOMBRE); 
                    $("#Txt_Primer_Apellido_Contacto").val(item.PRIMER_APELLIDO); $("#Txt_Segundo_Apellido_Contacto").val(item.SEGUNDO_APELLIDO); 
                    $("#Txt_Direccion_Actual_Contacto").val(item.DIRECCION); $("#Txt_Ingreso_Contacto").val(item.INGRESO);
                    $("#Cmb_Sexo_Contacto").val(item.ID_SEXO); $("#Cmb_Tipo_Contacto").val(item.ID_TIPO_CONTACTO);
                    $("#Txt_Tel_Contacto").val(item.TEL); $("#Txt_Cel_T_Contacto").val(item.CEL_T); $("#Txt_Cel_C_Contacto").val(item.CEL_C);  
                    $("#Txt_Email_Contacto").val(item.EMAIL); 

                    setTimeout(function () {
                        $('#Txt_Primer_Nombre_Contacto').focus();
                    }, 420);

                };

                self_02.selectRow_Reg_Contacto_DEL = function(item){
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 1) {
                        if (aPermisos.length > 0) {
                            if ((aPermisos[0].INS == '0') || (aPermisos[0].ACT == '0')) {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }
                                        
                    // Se recuperan los Datos...
                    xID_CONTACTO_PROVEEDOR = parseFloat(item.ID); 
                                                        
                    var xUSER = yID_USER, xSESION = ySESION_USER;

                    // Ejecutando la Orden
                    let Eliminar_Registros = async (yContacto, lUser, lSesion) => {
                        let Mi_url = "Frm_Metodos_WEB_Services.aspx/Eliminar_REG_CONTACTO_PROVEEDOR";
                        let Mis_Parametros = JSON.stringify({ xID: yContacto, xUSER: lUser, xSESION: lSesion });

                        let response = await yMetodos[7]('¿Desea Eliminar el Registro?...', Mi_url, Mis_Parametros);
                        if (response.d.exito == false){
                            xContenido = response.d.Mensaje; yMetodos[1](xContenido, "error"); 
                        } else { 
                            xContenido = 'Acción Realizada con Exito...'; yMetodos[1](xContenido, "success"); 

                            self_02.Cargar_Mis_Datos_Contactos(xID_PROVEEDOR);

                            // Limpiando Campos...
                            xID_CONTACTO_PROVEEDOR = 0; 
                             
                            $(".InputBox").each(function () {
                                $(this).prop('value', '')
                            });

                            $(".ComboBox").each(function () {
                                $(this).prop('selectIndex', 0)
                            });
                                                        
                            $("#Txt_Tel_Contacto").jqxMaskedInput('clear'); $("#Txt_Cel_T_Contacto").jqxMaskedInput('clear'); $("#Txt_Cel_C_Contacto").jqxMaskedInput('clear'); 
                            $("#Txt_Identificacion_Contacto").jqxMaskedInput('clear');
                        } 
                    };
                    Eliminar_Registros(xID_CONTACTO_PROVEEDOR, xUSER, xSESION);
                };


                //Paginación de la Cuadricula
                self_02.g_DescInput_02 = ko.observable();
                self_02.g_current_page_02 = ko.observable(1);
                self_02.search_02 = ko.observable('');

                self_02.g_nPagina_02 = ko.observable(1);
                self_02.g_nextPage_02 = ko.observable();
                self_02.g_nPorPagina_02 = ko.observable(5);
                self_02.g_firstPage_02 = ko.observable(1);
                self_02.g_previousPage_02 = ko.observable();
                self_02.g_lstTabla_02 = ko.observableArray([]);

                self_02.g_lastPage_02 = ko.computed(function () {
                    var dt = self_02.Mis_Datos_02.filtered_02(self_02.search_02());
                    self_02.g_current_page_02(1);
                    g_firstEvent_02();
                    self_02.g_lstTabla_02(ko.mapping.toJS(dt));
                    var div = self_02.g_lstTabla_02().length / self_02.g_nPorPagina_02();
                    var divFloor = Math.floor(div);
                    if (div > divFloor) {
                        div = divFloor + 1;
                    }

                    if (div == 1) {
                        g_unicEvent_02();
                    }

                    return div;
                }, this);

                self_02.g_visible_pagination_02 = ko.computed(function () {
                    if (self_02.g_lstTabla_02().length == 0) {
                        $("#g_divPage_02").addClass("invisible");
                    }
                    else {
                        $("#g_divPage_02").removeClass("invisible");
                    }
                }, this);

                self_02.g_Paginacion_02 = ko.computed(function () {
                    var page = (parseInt(self_02.g_current_page_02()) * parseInt(self_02.g_nPorPagina_02())) - parseInt(self_02.g_nPorPagina_02());

                    $("#g_inputPage_02").val('Total Reg.: ' + self_02.g_lstTabla_02().length + ' - Pag. ' + self_02.g_current_page_02() + ' de ' + self_02.g_lastPage_02());

                    if (parseInt(self_02.g_current_page_02(), 10) < parseInt(self_02.g_lastPage_02(), 10)) {
                        $("#g_divPage_02").find("span.last_02").removeClass("disabled");
                        $("#g_divPage_02").find("span.next_02").removeClass("disabled");
                    }

                    return self_02.g_lstTabla_02.slice(page, page + parseInt(self_02.g_nPorPagina_02()));
                });

                $("#g_last_02").click(function (evt) {
                    if (!$("#g_last_02").hasClass("disabled")) {
                        self_02.g_current_page_02(self_02.g_lastPage_02());
                        $("#g_inputPage_02").val('Total Reg.: ' + self_02.g_lstTabla_02().length + ' - Pag. ' + self_02.g_current_page_02() + ' de ' + self_02.g_lastPage_02());
                        g_lastEvent_02();
                    }
                });

                $("#g_first_02").click(function (evt) {
                    if (!$("#g_first_02").hasClass("disabled")) {
                        self_02.g_current_page_02(self_02.g_firstPage_02());
                        $("#g_inputPage_02").val('Total Reg.: ' + self_02.g_lstTabla_02().length + ' - Pag. ' + self_02.g_current_page_02() + ' de ' + self_02.g_lastPage_02());
                        g_firstEvent_02();
                    }
                });

                $("#g_previous_02").click(function (evt) {
                    if (!$("#g_previous_02").hasClass("disabled")) {
                        var g_current_page = parseInt(self_02.g_current_page_02(), 10);
                        self_02.g_previousPage_02(g_current_page - 1);
                        self_02.g_current_page_02(self_02.g_previousPage_02());
                        $("#g_inputPage_02").val('Total Reg.: ' + self_02.g_lstTabla_02().length + ' - Pag. ' + self_02.g_current_page_02() + ' de ' + self_02.g_lastPage_02());

                        $("#g_divPage_02").find("span.last_02").removeClass("disabled");
                        $("#g_divPage_02").find("span.next_02").removeClass("disabled");

                        if (self_02.g_current_page_02() == self_02.g_firstPage_02()) {
                            $("#g_divPage_02").find("span.first_02").addClass("disabled");
                            $("#g_divPage_02").find("span.previous_02").addClass("disabled");
                        }
                    }
                });

                $("#g_next_02").click(function (evt) {
                    if (!$("#g_next_02").hasClass("disabled")) {
                        var g_current_page = parseInt(self_02.g_current_page_02(), 10);
                        self_02.g_nextPage_02(g_current_page + 1);
                        self_02.g_current_page_02(self_02.g_nextPage_02());
                        $("#g_inputPage_02").val('Total Reg.: ' + self_02.g_lstTabla_02().length + ' - Pag. ' + self_02.g_current_page_02() + ' de ' + self_02.g_lastPage_02());

                        $("#g_divPage_02").find("span.first_02").removeClass("disabled");
                        $("#g_divPage_02").find("span.previous_02").removeClass("disabled");

                        if (self_02.g_current_page_02() == self_02.g_lastPage_02()) {
                            $("#g_divPage_02").find("span.last_02").addClass("disabled");
                            $("#g_divPage_02").find("span.next_02").addClass("disabled");
                        }
                    }
                });

                $("#g_inputPage_02").bind('focus mouseup', function (event) {
                    var g_current_page = parseInt(self_02.g_current_page_02(), 10);

                    if (event.type === 'focus') {
                        $(this).val(g_current_page).select();
                    }

                    if (event.type === 'mouseup') {
                        $(this).val(g_current_page).select();
                        return false;
                    }

                    if (self_02.g_current_page_02() > self_02.g_firstPage_02() && self_02.g_current_page_02() < self_02.g_lastPage_02()) {
                        g_allEvent_02();
                    }
                });

                $("#g_inputPage_02").bind('blur keydown', function (event) {
                    if (event.keyCode === 13 || event.type === 'blur') {
                        if (isNaN($(this).val()) || $(this).val() < self_02.g_firstPage_02() || $(this).val() > self_02.g_lastPage_02()) {
                            $(this).val('Total Reg.: ' + self_02.g_lstTabla_02().length + ' - Pag. ' + self_02.g_current_page_02() + ' de ' + self_02.g_lastPage_02());
                        }
                        else {
                            var g_current_page = parseInt($(this).val(), 10);
                            self_02.g_current_page_02(g_current_page);
                            $(this).val('Total Reg.: ' + self_02.g_lstTabla_02().length + ' - Pag. ' + self_02.g_current_page_02() + ' de ' + self_02.g_lastPage_02());

                            if (self_02.g_current_page_02() == self_02.g_firstPage_02() && self_02.g_current_page_02() != self_02.g_lastPage_02()) { g_firstEvent_02() };
                            if (self_02.g_current_page_02() == self_02.g_lastPage_02() && self_02.g_current_page_02() != self_02.g_firstPage_02()) { g_lastEvent_02() };
                        }

                        if (self_02.g_current_page_02() > self_02.g_firstPage_02() && self_02.g_current_page_02() < self_02.g_lastPage_02()) {
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

            ko.observableArray.fn.filtered_02 = function (query, column) {
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
            ko.cleanNode($("#Frm_Datos_Contactos").get(0));
            ko.applyBindings(md_Modelo_02, $('#Frm_Datos_Contactos').get(0));
               
                                              
            
            // Ventana: Datos Personales
            $("#Frm_Datos").dialog({
                autoOpen: false, width: (lastWidth * 0.90), height: 'auto', modal: true, resizable: true, show: "slide", hide: "slide",
                dialogClass: "Estilos_Ventanas_Modales",
                position: "center",
                closeOnEscape: false,
                open: function () {
                    // Comportamiento de los Objetos de la Ventana
                    if (xBand_Proveedores == 1) {
                        $(this).dialog('option', 'title', 'VENTANA: REGISTRO DE PROVEEDORES');

                        yMetodos[5]("Cmb_Tipo", Mis_Tipos_Proveedores); yMetodos[5]("Cmb_Sexo", Mis_Tipos_Sexos);

                        $(".InputBox").each(function () {
                            $(this).prop('value', '')
                        });

                        $(".ComboBox").each(function () {
                            $(this).prop('selectedIndex', 0)
                        });
                                                                        
                        $('.xOpt_01').hide(); $('.xOpt_02').show();
                        $("#Txt_Identificacion_01").jqxMaskedInput('clear'); $("#Txt_Identificacion_02").jqxMaskedInput('clear'); 
                        $("#Txt_Tel").jqxMaskedInput('clear'); $("#Txt_Cel_T").jqxMaskedInput('clear'); $("#Txt_Cel_C").jqxMaskedInput('clear'); 
                        
                        xID_PROVEEDOR = 0; xNOMBRE_COMPLETO = ''; xCODIGO_PROVEEDOR = '';
                        
                    } else { $(this).dialog('option', 'title', 'VENTANA: REGISTRO DE PROVEEDORES - ' + xNOMBRE_COMPLETO); }

                    setTimeout(function () {
                        $('#Cmb_Tipo').focus().select();
                    }, 420);
                },
                buttons: [
                {
                    text: "GUARDAR",
                    click: function () {
                        // Datos del Encabezado
                        var xAPE_01 = ($.trim($("#Txt_Primer_Apellido").val()).length == 0) ? "" : $.trim($("#Txt_Primer_Apellido").val()).toUpperCase();
                        var xAPE_02 = ($.trim($("#Txt_Segundo_Apellido").val()).length == 0) ? "" : $.trim($("#Txt_Segundo_Apellido").val()).toUpperCase();
                        var xNOM_01 = ($.trim($("#Txt_Primer_Nombre").val()).length == 0) ? "" : $.trim($("#Txt_Primer_Nombre").val()).toUpperCase();
                        var xNOM_02 = ($.trim($("#Txt_Segundo_Nombre").val()).length == 0) ? "" : $.trim($("#Txt_Segundo_Nombre").val()).toUpperCase();
                        var xRAZON_SOCIAL = ($.trim($("#Txt_Razon_Social").val()).length == 0) ? "" : $.trim($("#Txt_Razon_Social").val()).toUpperCase();
                        var xDIR = ($.trim($("#Txt_Direccion").val()).length == 0) ? "" : $.trim($("#Txt_Direccion").val()).toUpperCase();
                        var xTEL = ($.trim($("#Txt_Tel").val()).length == 0) ? "" : $.trim($("#Txt_Tel").val()).toUpperCase();
                        var xCel_T = ($.trim($("#Txt_Cel_T").val()).length == 0) ? "" : $.trim($("#Txt_Cel_T").val()).toUpperCase();
                        var xCel_C = ($.trim($("#Txt_Cel_C").val()).length == 0) ? "" : $.trim($("#Txt_Cel_C").val()).toUpperCase();
                        var xEMAIL = ($.trim($("#Txt_Email").val()).length == 0) ? "" : $.trim($("#Txt_Email").val()).toUpperCase();
                        var xFECHA = yMetodos[8]($("#Txt_Ingreso").val());

                        var xUSER = yID_USER, xSESION = ySESION_USER; 

                        var xIDENTIFICACION = "";
                        
                        // Validando Informacion...
                        if (parseInt($('#Cmb_Tipo').val()) == 1){
                            xIDENTIFICACION = ($.trim($("#Txt_Identificacion_01").val()).length == 0) ? "" : $.trim($("#Txt_Identificacion_01").val()).toUpperCase();

                            let xModelo_Mensajes_01 = {
                                xAPE: 'Debe de digitar el Primer Apellido del Proveedor...',
                                xNOMB: 'Debe de digitar el Primer Nombre del Proveedor...'
                            };

                            let xModelo_01 = {
                                xAPE: xAPE_01,
                                xNOMB: xNOM_01
                            };

                            let xModelo_Exc_01 = ['xID'];
                        
                            yMetodos[2](xModelo_01, xModelo_Mensajes_01, xModelo_Exc_01);
                 
                            if (xModelo_01.Mi_Mensaje){
                                yMetodos[1](xModelo_01.Mi_Mensaje, "warning"); return false;
                            }
                        } else if (parseInt($('#Cmb_Tipo').val()) == 2){
                            xIDENTIFICACION = ($.trim($("#Txt_Identificacion_02").val()).length == 0) ? "" : $.trim($("#Txt_Identificacion_02").val()).toUpperCase();

                            let xModelo_Mensajes_02 = {
                                xRAZON_SOCIAL: 'Debe de digitar la Razón Social del Proveedor...'
                            };

                            let xModelo_02 = {
                                xRAZON_SOCIAL: xRAZON_SOCIAL
                            };

                            let xModelo_Exc_02 = ['xID'];
                        
                            yMetodos[2](xModelo_02, xModelo_Mensajes_02, xModelo_Exc_02);
                 
                            if (xModelo_02.Mi_Mensaje){
                                yMetodos[1](xModelo_02.Mi_Mensaje, "warning"); return false;
                            }
                        }
                                                          
                        
                        var uEncabezado = [];

                        uEncabezado.push({ ID: xID_PROVEEDOR, ID_SEXO: $('#Cmb_Sexo').val(), IDENTIFICACION: xIDENTIFICACION, ID_TIPO: $('#Cmb_Tipo').val(), NOM_01: xNOM_01, NOM_02: xNOM_02, APE_01: xAPE_01, APE_02: xAPE_02, RAZON_SOCIAL: xRAZON_SOCIAL, DIR: xDIR, TEL: xTEL, CEL_T: xCel_T, CEL_C: xCel_C, EMAIL: xEMAIL, INGRESO: xFECHA, USER: xUSER });

                        // Ejecutando la Orden                        
                        let Guardar_Registros_N1 = async (yDatos, lSESION) => {
                            let Mi_url = "Frm_Metodos_WEB_Services.aspx/Insertar_Actualizar_REG_PROVEEDORES";
                            let Mis_Parametros = JSON.stringify({ xDatos: yDatos, xSESION: lSESION  });

                            let response = await yMetodos[4]('¿Desea Guardar el Registro?...', Mi_url, Mis_Parametros);
                            if (response.d.exito == false){
                                xContenido = response.d.Mensaje; yMetodos[1](xContenido, "error"); 
                            } else { 
                                xContenido = 'Acción Realizada con Exito...'; yMetodos[1](xContenido, "success"); 
                                xID_PROVEEDOR = parseFloat(response.d.Mensaje);
                                  
                                if (xBand_Proveedores == 1) {
                                    $(".InputBox").each(function () {
                                        $(this).prop('value', '')
                                    });

                                    $(".ComboBox").each(function () {
                                        $(this).prop('selectedIndex', 0)
                                    });
                                                                        
                                    xID_PROVEEDOR = 0; xNOMBRE_COMPLETO = ''; xCODIGO_PROVEEDOR = '';

                                    $("#Txt_Identificacion_01").jqxMaskedInput('clear'); $("#Txt_Identificacion_02").jqxMaskedInput('clear'); 
                                    $("#Txt_Tel").jqxMaskedInput('clear'); $("#Txt_Cel_T").jqxMaskedInput('clear'); $("#Txt_Cel_C").jqxMaskedInput('clear'); 
                                } 

                                setTimeout(function () {
                                    $('#Cmb_Tipo').focus().select();
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

                        md_Modelo_01.Cargar_Mis_Datos_Proveedores(md_Modelo_01.ID_Estado());
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
                    async function Datos_Reportes(yId){
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
                    Datos_Reportes(14);
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

            // Ventana: Cuadro Familiar
            $("#Frm_Datos_Contactos").dialog({
                autoOpen: false, width: (lastWidth * 0.90), height: 'auto', modal: true, resizable: true, show: "slide", hide: "slide",
                dialogClass: "Estilos_Ventanas_Modales",
                position: "center",
                closeOnEscape: false,
                open: function () {
                    $(this).dialog('option', 'title', 'VENTANA: CONTACTOS DEL PROVEEDOR: ' + xNOMBRE_COMPLETO + ', CODIGO ' + xCODIGO_PROVEEDOR);
                                        
                    yMetodos[5]("Cmb_Tipo_Contacto", Mis_Tipos_Contactos); yMetodos[5]("Cmb_Sexo_Contacto", Mis_Tipos_Sexos);

                    md_Modelo_02.Cargar_Mis_Datos_Contactos(xID_PROVEEDOR);

                    // Limpiando Campos...
                    xID_CONTACTO_PROVEEDOR = 0; 

                    $(".InputBox").each(function () {
                        $(this).prop('value', '')
                    });

                    $(".ComboBox").each(function () {
                        $(this).prop('selectIndex', 0)
                    });
                                        
                    $("#Txt_Identificacion_Contacto").jqxMaskedInput('clear');
                    $("#Txt_Tel_Contacto").jqxMaskedInput('clear'); $("#Txt_Cel_T_Contacto").jqxMaskedInput('clear'); $("#Txt_Cel_C_Contacto").jqxMaskedInput('clear'); 

                    setTimeout(function () {
                        $('#Txt_Primer_Nombre_Contacto').focus().select();
                    }, 420);
                },
                buttons: [
                {
                    text: "GUARDAR",
                    click: function () {
                        // Datos del Encabezado
                        var xCED = ($.trim($("#Txt_Identificacion_Contacto").val()).length == 0) ? "" : $.trim($("#Txt_Identificacion_Contacto").val()).toUpperCase();
                        var xAPE_01 = ($.trim($("#Txt_Primer_Apellido_Contacto").val()).length == 0) ? "" : $.trim($("#Txt_Primer_Apellido_Contacto").val()).toUpperCase();
                        var xAPE_02 = ($.trim($("#Txt_Segundo_Apellido_Contacto").val()).length == 0) ? "" : $.trim($("#Txt_Segundo_Apellido_Contacto").val()).toUpperCase();
                        var xNOM_01 = ($.trim($("#Txt_Primer_Nombre_Contacto").val()).length == 0) ? "" : $.trim($("#Txt_Primer_Nombre_Contacto").val()).toUpperCase();
                        var xNOM_02 = ($.trim($("#Txt_Segundo_Nombre_Contacto").val()).length == 0) ? "" : $.trim($("#Txt_Segundo_Nombre_Contacto").val()).toUpperCase();
                        var xDIR = ($.trim($("#Txt_Direccion_Actual_Contacto").val()).length == 0) ? "" : $.trim($("#Txt_Direccion_Actual_Contacto").val()).toUpperCase();
                        var xTEL = ($.trim($("#Txt_Tel_Contacto").val()).length == 0) ? "" : $.trim($("#Txt_Tel_Contacto").val()).toUpperCase();
                        var xCel_T = ($.trim($("#Txt_Cel_T_Contacto").val()).length == 0) ? "" : $.trim($("#Txt_Cel_T_Contacto").val()).toUpperCase();
                        var xCel_C = ($.trim($("#Txt_Cel_C_Contacto").val()).length == 0) ? "" : $.trim($("#Txt_Cel_C_Contacto").val()).toUpperCase();
                        var xEMAIL = ($.trim($("#Txt_Email_Contacto").val()).length == 0) ? "" : $.trim($("#Txt_Email_Contacto").val()).toUpperCase();
                        var xFECHA = yMetodos[8]($("#Txt_Fecha_Ingreso_Contacto").val());

                        var xUSER = yID_USER, xSESION = ySESION_USER; 
                
                        // Validando Informacion...
                        let xModelo_Mensajes = {
                            xAPE_01: 'Debe de digitar el Primer Apellido del Contacto del Proveedor...',
                            xNOMB_01: 'Debe de digitar el Primer Nombre del Contacto del Proveedor...'
                        };

                        let xModelo = {
                            xAPE_01: xAPE_01,
                            xNOMB_01: xNOM_01
                        };

                        let xModelo_Exc = ['xID'];
                                  
                        yMetodos[2](xModelo, xModelo_Mensajes, xModelo_Exc);
                 
                        if (xModelo.Mi_Mensaje){
                            yMetodos[1](xModelo.Mi_Mensaje, "warning"); return false;
                        }

                        var uEncabezado = [];

                        uEncabezado.push({ ID: xID_CONTACTO_PROVEEDOR, PROVEEDOR: xID_PROVEEDOR, SEXO: $("#Cmb_Sexo_Contacto").val(), ID_TIPO: $("#Cmb_Tipo_Contacto").val(), CEDULA: xCED, APE_01: xAPE_01, APE_02: xAPE_02, NOM_01: xNOM_01, NOM_02: xNOM_02, DIRECCION: xDIR, TEL: xTEL, CEL_T: xCel_T, CEL_C: xCel_C, EMAIL: xEMAIL, INGRESO: xFECHA, USER: xUSER });

                        // Ejecutando la Orden
                        let Guardar_Registros_N2 = async (yDatos, lSESION) => {
                            let Mi_url = "Frm_Metodos_WEB_Services.aspx/Insertar_Actualizar_REG_CONTACTO_PROVEEDOR";
                            let Mis_Parametros = JSON.stringify({ xDatos: yDatos, xSESION: lSESION  });

                            let response = await yMetodos[4]('¿Desea Guardar el Registro?...', Mi_url, Mis_Parametros);
                            if (response.d.exito == false){
                                xContenido = response.d.Mensaje; yMetodos[1](xContenido, "error"); 
                            } else { 
                                xContenido = 'Acción Realizada con Exito...'; yMetodos[1](xContenido, "success"); 
                                md_Modelo_02.Cargar_Mis_Datos_Contactos(xID_PROVEEDOR);

                                // Limpiando Campos...
                                xID_CONTACTO_PROVEEDOR = 0; 

                                $(".InputBox").each(function () {
                                    $(this).prop('value', '')
                                });

                                $(".ComboBox").each(function () {
                                    $(this).prop('selectIndex', 0)
                                });
                                                        
                                $("#Txt_Identificacion_Contacto").jqxMaskedInput('clear');
                                $("#Txt_Tel_Contacto").jqxMaskedInput('clear'); $("#Txt_Cel_T_Contacto").jqxMaskedInput('clear'); $("#Txt_Cel_C_Contacto").jqxMaskedInput('clear'); 

                                setTimeout(function () {
                                    $('#Txt_Primer_Nombre_Contacto').focus().select();
                                }, 420);
                            } 
                        };
                        Guardar_Registros_N2(uEncabezado, xSESION);
                    },
                    class: "ui-button-spl2"
                },
                {
                    text: "CERRAR",
                    click: function () {
                        $(this).dialog("close"); 

                        md_Modelo_01.Cargar_Mis_Datos_Proveedores(md_Modelo_01.ID_Estado());
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
                    $(this).dialog('option', 'title', 'BAJA AL PROVEEDOR: ' + xNOMBRE_COMPLETO + ', CODIGO ' + xCODIGO_PROVEEDOR);
                    
                    $("#Txt_Fecha_Baja").val(date_str); 
                    $("#Txt_Observacion_Baja").val('');
                },
                buttons: [
                {
                    text: "GUARDAR",
                    click: function () {
                        var xOBS = ($.trim($("#Txt_Observacion_Baja").val()).length == 0) ? "BAJA AL PROVEEDOR: " + xNOMBRE_COMPLETO + ", CODIGO " + xCODIGO_PROVEEDOR : $.trim($("#Txt_Observacion_Baja").val()).toUpperCase();
                                    
                        var bFECHA_BAJA = yMetodos[6]($("#Txt_Fecha_Baja").val());
                        
                        var xUSER = yID_USER, xSESION = ySESION_USER;

                        // Ejecutando la Orden
                        let Baja_Registros = async (lID, lFECHA, lOBS, lUSER, lSESION) => {
                            let Mi_url = "Frm_Metodos_WEB_Services.aspx/Baja_REG_PROVEEDORES";
                            let Mis_Parametros = JSON.stringify({ xID: lID, xBAJA: lFECHA, xOBS: lOBS, xUSER: lUSER, xSESION: lSESION  });

                            let response = await yMetodos[4]('¿Desea dar de BAJA al Registro?...', Mi_url, Mis_Parametros);
                            if (response.d.exito == false){
                                xContenido = response.d.Mensaje; yMetodos[1](xContenido, "error"); 
                            } else { 
                                xContenido = 'Acción Realizada con Exito...'; yMetodos[1](xContenido, "success"); 

                                // Limpiando Campos...
                                xID_PROVEEDOR = 0; xCODIGO_PROVEEDOR = ''; xNOMBRE_COMPLETO = '';

                                $("#Txt_Fecha_Baja").val(date_str); 
                                $("#Txt_Observacion_Baja").val('');
                            } 
                        };
                        Baja_Registros(xID_PROVEEDOR, bFECHA_BAJA, xOBS, xUSER, xSESION);
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
    $("#Opt_02_03").css({ "background-color": "#F4FA58" });

    yTipo_User = $("#ROL_USER").val(); yUser = $("#NomUser").text(); yLog_User = $("#LOG_USER").val(); 
    yID_USER = parseFloat($("#ID_USER").val()); yID_ROL_USER = parseFloat($("#ID_ROL_USER").val()); ySESION_USER = parseFloat($("#SESION_USER").val()); 


    aCod_Opt = "Opt_02_03"; 
    if (yID_USER > 1) {
        Permisos_Usuario(yID_USER, yID_ROL_USER, aCod_Opt);
    }

    
    // Ventana Principal
    $("#Cmd_Nuevo").button({ icons: { primary: 'ui-icon-gear' } });
    $("#Cmd_Nuevo").find(".ui-icon").css({ "background-image": "url('css/images/operaciones/new.png')", "background-position": "0" });
    
    $("#Cmd_Imprimir").button({ icons: { primary: 'ui-icon-gear' } });
    $("#Cmd_Imprimir").find(".ui-icon").css({ "background-image": "url('css/images/operaciones/imprimir.png')", "background-position": "0" });
        
};

function Comportamiento_Objetos(){
    // Comportamiento de los Objetos
    $("#Txt_Ingreso").jqxDateTimeInput({ width: '100%', height: '30px', culture: 'es-ES', dropDownVerticalAlignment: "bottom", template: "primary", animationType: 'slide', formatString: 'dd/MM/yyyy', theme: 'arctic', textAlign: 'center' });
    $("#Txt_Fecha_Ingreso_Contacto").jqxDateTimeInput({ width: '100%', height: '30px', culture: 'es-ES', dropDownVerticalAlignment: "bottom", template: "primary", animationType: 'slide', formatString: 'dd/MM/yyyy', theme: 'arctic', textAlign: 'center' });
    $("#Txt_Fecha_Baja").jqxDateTimeInput({ width: '100%', height: '30px', culture: 'es-ES', dropDownVerticalAlignment: "bottom", template: "primary", animationType: 'slide', formatString: 'dd/MM/yyyy', theme: 'arctic', textAlign: 'center' });
    
    //Tabs Nº 01: Cuadro Personal
    $('#Cmb_Tipo').keypress(function (event) {
        if (event.which == 13) {
            $("#Txt_Identificacion").focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Cmb_Tipo').change(function (event) {
        var xValor = $('#Cmb_Tipo').val(); // Valor del ID o VALUE
        var xTexto = $("#Cmb_Tipo option:selected").html(); // Valor del Texto Seleccionado

        if (parseInt(xValor) == 1) {
            $('.xOpt_01').show(); $('.xOpt_02').hide(); $('#Txt_Identificacion_01').focus().select();
        } else if (parseInt(xValor) == 2) {
            $('.xOpt_01').hide(); $('.xOpt_02').show(); $('#Txt_Identificacion_02').focus().select();
        }
    });
    
    $("#Txt_Identificacion_01").jqxMaskedInput({ width: '100%', height: '30px', theme: 'arctic', mask: '#############L', promptChar: '', textAlign: 'center' });
    $("#Txt_Identificacion_02").jqxMaskedInput({ width: '100%', height: '30px', theme: 'arctic', mask: 'L#############', promptChar: '', textAlign: 'center' });

    $("#Txt_Tel").jqxMaskedInput({ width: '100%', height: '30px', theme: 'arctic', mask: '########', promptChar: '', textAlign: 'center' });
    $("#Txt_Cel_T").jqxMaskedInput({ width: '100%', height: '30px', theme: 'arctic', mask: '########', promptChar: '', textAlign: 'center' });
    $("#Txt_Cel_C").jqxMaskedInput({ width: '100%', height: '30px', theme: 'arctic', mask: '########', promptChar: '', textAlign: 'center' });

    $('#Txt_Identificacion_01').keypress(function (event) {
        if (event.which == 13) {
            $('#Cmb_Sexo').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Identificacion_01').bind('keydown', function (event) {
        if (event.keyCode == 40) {
            $("#Cmb_Sexo").select().focus();
            event.preventDefault(); // Detiene el proceso..
        } else if (event.keyCode == 39) {
            $("#Cmb_Sexo").select().focus();
            event.preventDefault(); // Detiene el proceso..
        } else if (event.keyCode == 38) {
            $("#Cmb_Tipo").select().focus();
            event.preventDefault(); // Detiene el proceso..
        } else if (event.keyCode == 37) {
            $("#Cmb_Tipo").select().focus();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Identificacion_02').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Razon_Social').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Identificacion_02').bind('keydown', function (event) {
        if (event.keyCode == 40) {
            $("#Txt_Razon_Social").select().focus();
            event.preventDefault(); // Detiene el proceso..
        } else if (event.keyCode == 39) {
            $("#Txt_Razon_Social").select().focus();
            event.preventDefault(); // Detiene el proceso..
        } else if (event.keyCode == 38) {
            $("#Cmb_Tipo").select().focus();
            event.preventDefault(); // Detiene el proceso..
        } else if (event.keyCode == 37) {
            $("#Cmb_Tipo").select().focus();
            event.preventDefault(); // Detiene el proceso..
        }
    });
        
    $('#Cmb_Sexo').keypress(function (event) {
        if (event.which == 13) {
            $("#Txt_Primer_Nombre").focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Razon_Social').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Direccion').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });
        
    $('#Txt_Primer_Nombre').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Segundo_Nombre').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Segundo_Nombre').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Primer_Apellido').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Primer_Apellido').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Segundo_Apellido').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Segundo_Apellido').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Direccion').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Direccion').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Tel').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });
    
    $('#Txt_Tel').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Cel_T').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Cel_T').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Cel_C').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });
        
    $('#Txt_Cel_C').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Email').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });
               
    $('#Txt_Email').keypress(function (event) {
        if (event.which == 13) {
            $("#Frm_Datos").parents().find('button:nth-child(1)').focus();
            event.preventDefault(); // Detiene el proceso..
        }
    });

        
    // Tabs Nº 02: Contactos del Proveedor
    // KeyPress
    $("#Txt_Identificacion_Contacto").jqxMaskedInput({ width: '100%', height: '30px', theme: 'arctic', mask: '#############L', promptChar: '', textAlign: 'center' });

    $("#Txt_Tel_Contacto").jqxMaskedInput({ width: '100%', height: '30px', theme: 'arctic', mask: '########', promptChar: '', textAlign: 'center' });
    $("#Txt_Cel_T_Contacto").jqxMaskedInput({ width: '100%', height: '30px', theme: 'arctic', mask: '########', promptChar: '', textAlign: 'center' });
    $("#Txt_Cel_C_Contacto").jqxMaskedInput({ width: '100%', height: '30px', theme: 'arctic', mask: '########', promptChar: '', textAlign: 'center' });

    $('#Txt_Primer_Nombre_Contacto').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Segundo_Nombre_Contacto').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Segundo_Nombre_Contacto').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Primer_Apellido_Contacto').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });
                        
    $('#Txt_Primer_Apellido_Contacto').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Segundo_Apellido_Contacto').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Segundo_Apellido_Contacto').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Direccion_Actual_Contacto').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });
                        
    $('#Txt_Direccion_Actual_Contacto').keypress(function (event) {
        if (event.which == 13) {
            $('#Cmb_Tipo_Contacto').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Cmb_Tipo_Contacto').keypress(function (event) {
        if (event.which == 13) {
            $('#Cmb_Sexo_Contacto').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Cmb_Sexo_Contacto').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Identificacion_Contacto').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Identificacion_Contacto').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Tel_Contacto').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });
    
    $('#Txt_Tel_Contacto').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Cel_T_Contacto').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Cel_T_Contacto').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Cel_C_Contacto').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });
        
    $('#Txt_Cel_C_Contacto').keypress(function (event) {
        if (event.which == 13) {
            $('#Txt_Email_Contacto').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });

    $('#Txt_Email_Contacto').keypress(function (event) {
        if (event.which == 13) {
            $("#Frm_Datos_Contactos").parents().find('button:nth-child(1)').focus();
            event.preventDefault(); // Detiene el proceso..
        }
    });
    

};






