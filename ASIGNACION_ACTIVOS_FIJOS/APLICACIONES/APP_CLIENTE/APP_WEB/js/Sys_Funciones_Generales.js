// Funciones Generales
// 1.- Validar Mensaje
export let xMi_Mensaje = function(xMsg, xTipo){
    swal(yTitulo, xMsg, xTipo, { buttons: { agregar: { text: "Aceptar" } }, closeOnClickOutside: false, allowOutsideClick: false });
};

// 2.- Haciendo la Solicitud Ajax...
function xDefaultError(jqXHR, textStatus, errorThrown) {
    if (jqXHR.status === 0) {
        xContenido = 'No hay Conexión en la RED....';
    } else if (jqXHR.status == 404) {
        xContenido = 'Página No Encontrada....';
    } else if (jqXHR.status == 500) {
        xContenido = 'Error Interno en el Servidor....';
    } else if (textStatus === 'parsererror') {
        xContenido = 'Error de Conversión al Formato JSON....';
    } else if (textStatus === 'timeout') {
        xContenido = 'Tiempo de Inactividad Agotado....';
    } else if (textStatus === 'abort') {
        xContenido = 'Solicitud del Servicio Abortado....';
    } else {
        xContenido = jqXHR.responseText;
    }
    xMi_Mensaje(xContenido, "error");
};

let $xHttp = function(xOpcion, xTexto, xSucess, mierror) {
    // Definicion de las Opciones para el objeto Ajax...
    xOpcion.success = xSucess;
    xOpcion.error = xDefaultError;
    xOpcion.dataType = "json";
    xOpcion.contentType = "application/json; charset=utf-8";

    mierror = xOpcion.error;

    if (xOpcion.type.toUpperCase() != 'GET'){
        swal({
            title: yTitulo,
            text: xTexto,
            icon: "info",
            buttons: {
                SI: { text: "SI" },
                NO: { text: "NO" },
            },
            dangerMode: true,
            customClass: 'swal-wide',
            closeOnClickOutside: false,
            allowOutsideClick: false
        }).then(function(value){
            switch(value)
            {
                case "SI":
                    $.ajax(xOpcion);
                    break;
                case "NO":
                    xMi_Mensaje('Acción Cancelada con Exito...', "info");
                    break;
            }
        });
    } else{ xOpcion.type = "POST"; $.ajax(xOpcion); }    
};

export let xListar = function(action, data){
    let options = {
        type: 'GET',
        url: action,
        data: data
    };

    return new Promise(function (resolve, reject){
        $xHttp(options, "", data => resolve(data), data => console.debug(data));
    });
};

export let xGuardar = function(texto, action, data){
    let options = {
        type: 'POST',
        url: action,
        data: data
    };

    return new Promise(function (resolve, reject) {
        $xHttp(options, texto, data => resolve(data), data => console.debug(data));
    });
};

export let xEliminar = function(texto, action, data){
    let options = {
        type: 'POST',
        url: action,
        data: data
    };

    return new Promise(function (resolve, reject) {
        $xHttp(options, texto, data => resolve(data), data => console.debug(data));
    });
};


// 3. Creando e Inicializando a los Observables...
export let xcreateObservables = function (context, lst, Es_Arrays = false) {
    for (let item of lst) {
        context[item] = (Es_Arrays == true) ? ko.observableArray([]) : ko.observable();
    }
};

export let xclearFieldObservable = function (context, lst) {
    for (let item of lst) {
        context[item](null);
    }
};

export let xclearFieldObservable_fechas = function (context, lst) {
    for (let item of lst) {
        context[item](moment(new Date().getFullYear() + "-" + (new Date().getMonth() + 1) + "-" + new Date().getDate()).format('YYYY-MM-DD'));
    }
};


// 2.- Funciones de Teclas Numericas...
export let xTecla_Presionada = function(xTecla) {
    if ((xTecla.charCode < 48 || xTecla.charCode > 57) && (xTecla.charCode != 46) && (xTecla.charCode != 8)) {
        return false;
    } else {
        var len = $(this).val().length;
        var index = $(this).val().indexOf('.');

        if (index > 0 && xTecla.charCode == 46) {
            return false;
        }

        if (index > 0) {
            var CharAfterdot = (len + 1) - index;
            if (CharAfterdot > 5) {
                return false;
            }
        }
    }

    return true;
};


// 3.- Función del AutoComplete...
export let xConfig_Autocomplete = function(xField, xSource, xFocus, xSelect){
    let result = $("#" + xField).autocomplete({
        delay: 0,
        minLength: 1,
        autofocus: true,
        source: xSource,
        focus: xFocus,
        select: xSelect
    })

    return result;
};


// 4.- Función del jxGrid...
export let xConfig_Grid = function(xJson, xDataFields, xHeight, xField, xDeferredDataFields, xColumns, xReady){
    var theme = 'arctic';
    var data = xJson;

    // Prepara las Columnas del GRID
    var source =
    {
        datatype: "json",
        datafields: xDataFields,
        localdata: data
    };

    // Construye el GRID
    var dHeight = xHeight;
    var dataAdapter = new $.jqx.dataAdapter(source);
    let result = $("#" + xField).jqxGrid({
        width: '100%',
        height: (lastHeight * dHeight),
        source: dataAdapter,
        theme: theme,
        pageable: true,
        pagesize: 15,
        pagesizeoptions: ['15', '30', '45'],
        autoheight: false,
        autorowheight: true,
        sortable: false,
        altrows: true,
        enabletooltips: false,
        selectionmode: 'singlerow',
        editable: false,
        columnsresize: true,
        scrollmode: 'deferred',
        deferreddatafields: xDeferredDataFields,
        pagermode: 'simple',
        columns: xColumns,
        ready: xReady
    })

    var localizationobj = {};
    localizationobj.pagergotopagestring = "Página Nº:";
    localizationobj.pagershowrowsstring = "Total Filas:";
    localizationobj.pagerrangestring = " DE ";
    localizationobj.pagernextbuttonstring = "Siguiente";
    localizationobj.pagerpreviousbuttonstring = "Anterior";
    localizationobj.sortascendingstring = "";
    localizationobj.sortdescendingstring = "";
    localizationobj.sortremovestring = "";
    localizationobj.firstDay = 1;
    localizationobj.percentsymbol = "%";
    localizationobj.currencysymbol = "C$";
    localizationobj.currencysymbolposition = "";
    localizationobj.decimalseparator = ".";
    localizationobj.thousandsseparator = ",";
    localizationobj.emptydatastring = "Sin Información a Mostrar";
    localizationobj.loadtext = "Recuperando Información...",

    $("#" + xField).jqxGrid('localizestrings', localizationobj);

    return result;
};


// 5.- Validar los Campos antes de hacer la Solicitud Ajax...
let xValidateItem = function(xField, xMsg, xContext){
    let typedata = typeof(xContext[xField]);

    switch(typedata){
        case 'number':
            if(xContext[xField] < 0){
                return xMsg;
            }
            break;
        case 'string':
            if(xContext[xField].length == 0){
                return xMsg;
            }
            break;
        default: break;
    }

    return '';
};

export let xValidateSave = function(xModel, xLista_Msg, xFields){
    for(let xItem in xModel){
        let xEncontrado = xFields.find(value => value == xItem);
        if (!xEncontrado){
            let Mensaje = xValidateItem(xItem, xLista_Msg[xItem], xModel);

            if (Mensaje.length > 0){
                xModel.Mi_Mensaje = Mensaje;
            }
        }
    }

    return xModel;
};


// 6.- Llenar Combos
export let xLlenar_Combos = function(xField, aLista) {
    var miselect = $('#' + xField);
    miselect.find('option').remove().end().append('<option value=-1></option>').val('');
    miselect.empty();

    if (aLista.length > 0) {
        $.each(aLista, function (pos, elemento) {
            miselect.append('<option value="' + elemento.ID + '">' + elemento.DESCRIPCION + '</option>');
        });
    } else { miselect.append('<option value=-1></option>'); }
};


// 7.- Devolver el Nombre del Mes, Sumar dos Fechas en base de su dia y Convertir texto en Fecha, Formato de un Numero...
export let xBuscar_Nombre_Mes = function(xMes) {
    var xResult = 'SIN INFO';
    arreglo = [{ val: 1, desc: 'ENERO' }, { val: 2, desc: 'FEBRERO' }, { val: 3, desc: 'MARZO' }, { val: 4, desc: 'ABRIL' },
                { val: 5, desc: 'MAYO' }, { val: 6, desc: 'JUNIO' }, { val: 7, desc: 'JULIO' }, { val: 8, desc: 'AGOSTO' },
                { val: 9, desc: 'SEPTIEMBRE' }, { val: 10, desc: 'OCTUBRE' }, { val: 11, desc: 'NOVIEMBRE' }, { val: 12, desc: 'DICIEMBRE' },
    ];

    for (var i = 0; i < arreglo.length; i++) {
        if (arreglo[i].val == xMes) {
            xResult = arreglo[i].desc;
            break;
        }
    }

    return xResult;
};

// 8.- Devolver la suma de Fechas...
export let xSuma_Fecha = function(d, fecha) {
    var Fecha = new Date();
    var sFecha = fecha || (Fecha.getDate() + "/" + (Fecha.getMonth() + 1) + "/" + Fecha.getFullYear());
    var sep = sFecha.indexOf('/') != -1 ? '/' : '-';
    var aFecha = sFecha.split(sep);
    var fecha = aFecha[2] + '/' + aFecha[1] + '/' + aFecha[0];
    fecha = new Date(fecha);
    fecha.setDate(fecha.getDate() + parseInt(d));
    var anno = fecha.getFullYear();
    var mes = fecha.getMonth() + 1;
    var dia = fecha.getDate();
    mes = (mes < 10) ? ("0" + mes) : mes;
    dia = (dia < 10) ? ("0" + dia) : dia;
    var fechaFinal = dia + sep + mes + sep + anno;

    return (fechaFinal);
};

// 9.- Convertir Texto a Fecha
export let xConvertir_Texto_A_Fecha = function(xTexto) {
    var myDate = xTexto.split('/');
    return new Date(myDate[2], myDate[1] - 1, myDate[0]);
};

export let xObtener_Fecha = function(xjqxDateTimeInput){
    var _xFecha = xjqxDateTimeInput;
    var _xDia = parseFloat(_xFecha.slice(0, 2)); var _xMes = parseFloat(_xFecha.slice(3, 5)); var _xAnyo = parseFloat(_xFecha.slice(6, 10));
    var day = _xDia; var month = _xMes;
    if (_xDia < 10) {
        day = "0" + _xDia;
    }
    if (_xMes < 10) {
        month = "0" + _xMes;
    }
    return (_xAnyo + '-' + month + '-' + day);
};

export let xObtener_Anyo_Fecha = function(xjqxDateTimeInput){
    var _xFecha = xjqxDateTimeInput;
    var _xAnyo = parseFloat(_xFecha);
    
    return (_xAnyo);
};

// 10.- Formatear Numero
export let xFormato_Numero = function(numero, decimales, separador_decimal, separador_miles) { 
    numero = parseFloat(numero);
    if (isNaN(numero)) {
        return "";
    }

    if (decimales !== undefined) {
        // Redondeamos
        numero = numero.toFixed(decimales);
    }

    // Convertimos el punto en separador_decimal
    numero = numero.toString().replace(".", separador_decimal !== undefined ? separador_decimal : ",");

    if (separador_miles) {
        // Añadimos los separadores de miles
        var miles = new RegExp("(-?[0-9]+)([0-9]{3})");
        while (miles.test(numero)) {
            numero = numero.replace(miles, "$1" + separador_miles + "$2");
        }
    }

    return numero;
};

export let formatNumber = (numero = 0) => { // DEVUELVE UN STRING

    return new Intl.NumberFormat("en-US", { minimumFractionDigits: 2, maximumFractionDigits: 2 }).format(numero)
};

export let convertNumber = (numero = 0) => {

    let typedata = typeof (numero)

    if (typedata == 'number') { return numero; }

    let lstString = numero.split(',');
    let result = '';

    for (let i of lstString) {
        result += i;
    }

    return parseFloat(result);
};

export let formatNumberEntero = (numero = 0) => { // DEVUELVE UN STRING

    return new Intl.NumberFormat("en-US", { minimumFractionDigits: 0, maximumFractionDigits: 0 }).format(numero)
};


// 8.- Convertir Numero en Letras
let mod = function(dividendo, divisor) {
    var resDiv = dividendo / divisor;
    var parteEnt = Math.floor(resDiv);   // Obtiene la parte Entera de resDiv
    var parteFrac = resDiv - parteEnt;  // Obtiene la parte Fraccionaria de la división

    var modulo = Math.round(parteFrac * divisor)
    return modulo;
}; // Fin de función mod

let ObtenerParteEntDiv = function(dividendo, divisor) {
    var resDiv = dividendo / divisor;
    var parteEntDiv = Math.floor(resDiv);
    return parteEntDiv;
}; // Fin de función ObtenerParteEntDiv

let fraction_part = function(dividendo, divisor) {
    var resDiv = dividendo / divisor;
    var f_part = Math.floor(resDiv);
    return f_part;
}; // Fin de función fraction_part

let string_literal_conversion = function(number) {
    var centenas = ObtenerParteEntDiv(number, 100);

    number = mod(number, 100);

    var decenas = ObtenerParteEntDiv(number, 10);
    number = mod(number, 10);

    var unidades = ObtenerParteEntDiv(number, 1);
    var number = mod(number, 1);

    var string_hundreds = "", string_tens = "", string_units = "";

    if (centenas == 1) {
        string_hundreds = "CIENTO ";
    }

    if (centenas == 2) {
        string_hundreds = "DOSCIENTOS ";
    }

    if (centenas == 3) {
        string_hundreds = "TRESCIENTOS ";
    }

    if (centenas == 4) {
        string_hundreds = "CUATROCIENTOS ";
    }

    if (centenas == 5) {
        string_hundreds = "QUINIENTOS ";
    }

    if (centenas == 6) {
        string_hundreds = "SEISCIENTOS ";
    }

    if (centenas == 7) {
        string_hundreds = "SIETESCIENTOS ";
    }

    if (centenas == 8) {
        string_hundreds = "OCHOSCIENTOS ";
    }

    if (centenas == 9) {
        string_hundreds = "NOVESCIENTOS ";
    }

    if (decenas == 1) {
        if (unidades == 1) {
            string_tens = "ONCE";
        }

        if (unidades == 2) {
            string_tens = "DOCE";
        }

        if (unidades == 3) {
            string_tens = "TRECE";
        }

        if (unidades == 4) {
            string_tens = "CATORCE";
        }

        if (unidades == 5) {
            string_tens = "QUINCE";
        }

        if (unidades == 6) {
            string_tens = "DIECISEIS";
        }

        if (unidades == 7) {
            string_tens = "DIECISIETE";
        }

        if (unidades == 8) {
            string_tens = "DIECIOCHO";
        }

        if (unidades == 9) {
            string_tens = "DIECINUEVE";
        }
    }

    if (decenas == 2) {
        string_tens = "VEINTI";

    }
    if (decenas == 3) {
        string_tens = "TREINTA";
    }
    if (decenas == 4) {
        string_tens = "CUARENTA";
    }
    if (decenas == 5) {
        string_tens = "CINCUENTA";
    }
    if (decenas == 6) {
        string_tens = "SESENTA";
    }
    if (decenas == 7) {
        string_tens = "SETENTA";
    }
    if (decenas == 8) {
        string_tens = "OCHENTA";
    }
    if (decenas == 9) {
        string_tens = "NOVENTA";
    }


    if (decenas == 1) {
        string_units = "";
    }
    else {
        if (unidades == 1) {
            string_units = "UN";
        }
        if (unidades == 2) {
            string_units = "DOS";
        }
        if (unidades == 3) {
            string_units = "TRES";
        }
        if (unidades == 4) {
            string_units = "CUATRO";
        }
        if (unidades == 5) {
            string_units = "CINCO";
        }
        if (unidades == 6) {
            string_units = "SEIS";
        }
        if (unidades == 7) {
            string_units = "SIETE";
        }
        if (unidades == 8) {
            string_units = "OCHO";
        }
        if (unidades == 9) {
            string_units = "NUEVE";
        }

    }

    if (centenas == 1 && decenas == 0 && unidades == 0) {
        string_hundreds = "CIEN ";
    }

    if (decenas == 1 && unidades == 0) {
        string_tens = "DIEZ ";
    }

    if (decenas == 2 && unidades == 0) {
        string_tens = "VEINTE ";
    }

    if (decenas >= 3 && unidades >= 1) {
        string_tens = string_tens + " Y ";
    }

    var final_string = string_hundreds + string_tens + string_units;
    return final_string;

};

// 11.- Convertir Numero en Letras
export let xConvertir_Numero_En_Letras = function(number, moneda) {
    //number = number_format (number, 2);
    var number1 = number;

    //settype (number, "integer");
    var cent = number1.split(".");
    var centavos = cent[1];

    var descriptor = "", centenas_final_string = "", millions = "", millions_final_string = "", thousands = "",
        thousands_final_string = "", centenas = "";

    number = cent[0];

    if (centavos == 0 || centavos == undefined) {
        centavos = "00";
    }

    if (number == 0 || number == "") {
        centenas_final_string = " CERO ";
    }
    else {
        millions = ObtenerParteEntDiv(number, 1000000);
        number = mod(number, 1000000);

        if (millions != 0) {
            // This condition handles the plural case
            if (millions == 1) {
                descriptor = " MILLON ";
            }
            else {
                descriptor = " MILLONES ";
            }
        }
        else {
            descriptor = " ";
        }
        millions_final_string = string_literal_conversion(millions) + descriptor;

        thousands = ObtenerParteEntDiv(number, 1000);

        number = mod(number, 1000);

        if (thousands != 1) {
            thousands_final_string = string_literal_conversion(thousands) + " MIL ";
        }
        if (thousands == 1) {
            thousands_final_string = " MIL ";
        }
        if (thousands < 1) {
            thousands_final_string = " ";
        }

        centenas = number;
        centenas_final_string = string_literal_conversion(centenas);

    }

    /* Concatena los millones, miles y cientos*/
    cad = millions_final_string + thousands_final_string + centenas_final_string;

    /* Convierte la cadena a Mayúsculas*/
    cad = cad.toUpperCase();

    if (centavos.length > 2) {
        if (centavos.substring(2, 3) >= 5) {
            centavos = centavos.substring(0, 1) + (parseInt(centavos.substring(1, 2)) + 1).toString();
        } else {

            centavos = centavos.substring(0, 1);
        }
    }

    /* Concatena a los centavos la cadena "/100" */
    if (centavos.length == 1) {
        centavos = centavos + "0";
    }
    centavos = centavos + "/100";

    if (cad == '  MIL ') {
        cad = ' UN MIL ';
    }

    var xResultado = cad + ' ' + moneda + ' CON ' + centavos + " CTVOS. ";
    xResultado = $.trim(xResultado);
    return xResultado;
};

// 12.- Validar Mensaje
export let xValidar_Mensaje = function(xMsg, xTipo){
    swal(yTitulo, xMsg, xTipo, { buttons: { agregar: { text: "Aceptar" } }, closeOnClickOutside: false, allowOutsideClick: false });
};


// 13.- Calcular Dias Laborales
export let xCalcular_Dias_Laborales = function(yINI, yFIN){
    var fechaini = new Date(yINI);
    var fechafin = new Date(yFIN);
    var diasdif = fechafin.getTime() - fechaini.getTime();
    var contdias = Math.round(diasdif / (1000 * 60 * 60 * 24));

    return (contdias + 1);
};

// 14.- Validar Fecha
export let xValidar_Fecha_Introducida = function(campo) {
    var RegExPattern = /^\d{1,2}\/\d{1,2}\/\d{2,4}$/;
    if ((campo.match(RegExPattern)) && (campo!='')) {
        return true;
    } else {
        return false;
    }
}