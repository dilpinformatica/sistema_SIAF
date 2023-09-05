// Variable Global
var xUbica = "", xElem = "", yMetodos = [], xSesion_Prueba = "", yUser = "";

// Llamada del Archivo Javascript por Import
let xMetodos = import('./Sys_Funciones_Generales.js');


$(document).ready(function () {  
    
    // Métodos Principales...
    xMetodos.then(function(Valor){
        yMetodos[0] = Valor.xHttp;
        yMetodos[1] = Valor.xValidar_Mensaje;

        try {
            /* --- Encabezado de la Pagina ----- */
            // Funcion de Configuracion Inicial y Comportamiento de los Objetos
            xUbica = GetUserXmlInfo('LastTabClicked'); xElem = xUbica.split('º');
            xSesion_Prueba = GetSessionValue("Data_Prueba"); 
            Configuracion_Inicial(); Comportamiento_Objetos(); 
                        
            // Encabezado Principal
            var xMi_Modelo_01 = function (){
                var self = this;

                self.Txt_Password = ko.observable('');

                // Botones del Encabezado
                self.Aplicar = function () {
                    // Detectar el tipo de Usuario a que tiene derecho esta ventana...
                    if (yID_USER > 1) {
                        if (aPermisos.length > 0) {
                            if (aPermisos[0].ACT == '0') {
                                xContenido = 'No Tiene Acceso a Esta Opcion...'; yMetodos[1](xContenido, "warning"); return false;
                            }
                        }
                    }
                                                                                
                    if ((self.Txt_Password() == null) || (self.Txt_Password() == undefined)) {
                        xContenido = 'Debe de digitar el Password o Clave a Modificar...'; yMetodos[1](xContenido, "warning"); return false;
                    }

                    if (self.Txt_Password().length == 0) {
                        xContenido = 'Debe de digitar el Password o Clave a Modificar...'; yMetodos[1](xContenido, "warning"); return false;
                    }

                    var xUSER = yID_USER, xSESION = ySESION_USER;

                    // Se recuperan los Datos...
                    var uEncabezado = [];

                    uEncabezado.push({ ID: xUSER, DESCRIPCION: self.Txt_Password() });
                    
                    // Ejecutando la Orden
                    xOpciones = {
                        type: "POST",
                        url: "Frm_Metodos_WEB_Services.aspx/Actualizar_PASSWORD_USER",
                        data: JSON.stringify({ xDatos: uEncabezado, xSESION: xSESION })
                    };

                    let Success = function (data){
                        if (data.d.exito == false){
                            yMetodos[1](data.d.Mensaje, "error"); return false; 
                        }

                        xContenido = 'Acción Realizada con Exito....'; yMetodos[1](xContenido, "success");
                               
                        self.Txt_Password('');

                    };

                    yMetodos[0](xOpciones, "¿Desea Actualizar su Password o Clave Correspondiente?...", Success);

                    
                };
                                                
            };
            
            let md_Modelo_01 = new xMi_Modelo_01();
            ko.cleanNode($("#Mi_Modelo_Principal").get(0));
            ko.applyBindings(md_Modelo_01, $('#Mi_Modelo_Principal').get(0));
               

        } catch (ex) { yMetodos[1](ex.message, "error"); }       

    }).catch(response => { yMetodos[1](response, "error") });
});

// Funcion de Configuracion Inicial
function Configuracion_Inicial() {
    // Evitar ir atras...
    if (history.forward(1)) {
        location.replace(history.forward(1));
    }

    //lastHeight = $("#div_contenedor").height(); lastWidth = $("#div_contenedor").width();
    lastHeight = $(window).height(); lastWidth = $(window).width();
    $(window).resize(function () {
        lastHeight = $(window).height(); lastWidth = $(window).width();
    });

    $(window).resize();

    // Poner el Foco en la opcion del Menu Elegido
    $("#Opt_04").click();
    $("#Opt_04_02").css({ "background-color": "#F4FA58" });

    yTipo_User = $("#ROL_USER").val(); yUser = $("#NomUser").text(); yLog_User = $("#LOG_USER").val(); yID_EMPRESA_USER = parseFloat($("#ID_EMPRESA_USER").val());
    yID_USER = parseFloat($("#ID_USER").val()); yID_ROL_USER = parseFloat($("#ID_ROL_USER").val()); ySESION_USER = parseFloat($("#SESION_USER").val()); yID_PERIODO_USER = parseFloat($("#ID_PERIODO_USER").val());

    aCod_Opt = "Opt_04_02"; aAPP_MODULO = 2;
    if (yID_USER > 1) {
        Permisos_Usuario(yID_USER, aCod_Opt, aAPP_MODULO);
    }
        
    // Botones
    $("#Cmd_Aplicar").button({ icons: { primary: 'ui-icon-gear' } });
    $("#Cmd_Aplicar").find(".ui-icon").css({ "background-image": "url('css/images/operaciones/edit.png')", "background-position": "0" });   
};

// Funcion de los KeyPress y Combos...
function Comportamiento_Objetos() {
    // Tabs Nº 01: Constantes
    $('#Txt_Password').keypress(function (event) {
        if (event.which == 13) {
            $('#Cmd_Aplicar').focus().select();
            event.preventDefault(); // Detiene el proceso..
        }
    });    
};



