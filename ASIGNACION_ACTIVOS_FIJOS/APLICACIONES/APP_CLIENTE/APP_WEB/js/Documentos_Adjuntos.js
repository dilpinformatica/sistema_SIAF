//-------------------------SUBIR DOCUMENTOS-----------------------------

var lstdocument = [];
var xNombre_Archivo = "";

ySESION_USER = $("#SESION_USER").val();

function handleFileSelect(evt) {
    var worker = new Worker('js/Workerfiles.js?v=' + moment(new Date()).format('YYYYMMDDhhmm'));

    evt.stopPropagation(); evt.preventDefault();

    var output = []; var d = new Date();
    var tamanopermitido = true, peso = 0, j = 0;
    var files;

    try {
        files = evt.dataTransfer.files;
    } catch (e) {
        if (e) {
            files = evt.target.files;
        }
    }


    // Validando un peso no mayor a 20 mb (20 MB = 20971520 Byte)
    for (var i = 0; i < files.length; i++) {
        peso = peso + files[i].size;
        if (peso >= 20971520) { tamanopermitido = false; }
    }

    if (!tamanopermitido) {
        alertify.alert(xTitulo, '<p style="color:navy;"><strong>Ha Excedido al Peso total (20 MB para uno o mas Archivos a Subir) permitido para Subir Archivos en la Aplicación!!!!</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
        return;
    }

    worker.addEventListener('message', function (e) {
        var obj = JSON.parse(e.data);
        console.log(obj)

        switch (obj.event) {
            case "onloadstart":
                var result = lstdocument.filter(function (i) {
                    return i.nbarchivo == obj.data.nbarchivo
                })

                if (result.length == 0) {
                    lstdocument.push({
                        nbarchivo: obj.data.nbarchivo,
                        urlarchivo: '',
                        ext: obj.data.ext,
                        server: 0,
                        id: 0,
                        codigo: 0
                    });
                }

                var box = '';
                lstdocument.forEach(function(i, index){
                    box += dibujacaja(index, i.nbarchivo, i.ext, i.id, i.server, i.codigo, yID_USER);
                })

                $('#documentos').html(box);
                break;
            case "onload":
                j++;
                lstdocument.forEach(function (i) {
                    if (i.nbarchivo == obj.data.nbarchivo) {
                        i.urlarchivo = obj.data.urlimg;
                    }
                });
                if (files.length == j) { worker.terminate(); }
                break;
        }
    }, false);

    for (var i = 0, f; f = files[i]; i++) {
        worker.postMessage(f);
    }
}

function handleDragOver(evt) {
    evt.stopPropagation();
    evt.preventDefault();
    evt.dataTransfer.dropEffect = 'copy'; // Explicitly show this is a copy.
}

function dibujacaja(indice, nombre, extension, id, server, codigo, xUSER) {
    var caja = '<div class="col-md-4" id="Opt_' + pad(indice, 5) + '_' + id + '">' +
                    '<div class="panel panel-primary">' +
                        '<div class="panel-heading">' +
                            '<h3 class="panel-title">' +
                                '<span class="dropdown" title="Listado de Opciones...">' +
                                    '<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"><span class="glyphicon glyphicon-cog"></span></button>' +
                                    '<ul class="dropdown-menu" style="Text-Align:Left;">' +
                                        '<li><a href="#" onclick="downloadfile(' + indice + '); return false;"><span class="glyphicon glyphicon-download-alt"></span>Descargar</a></li>' +
                                        '<li><a href="#" onclick="removefile(' + indice + ',' + id + ',' + server + ',' + codigo + ',' + xUSER + '); return false;"><span class="glyphicon glyphicon-remove"></span>Eliminar</a></li>' +
                                    '</ul>'+
                                '</span>   Datos del Archivo' +
                            '</h3>' +
                        '</div>' +
                        '<div class="panel-body">' +
                            '<span style="color:red"><strong>Nombre Archivo: ' + nombre + '</strong></span></br>' +
                            '<span style="color:red"><strong>Extensión: ' + extension + '</strong></span>' +
                        '</div>' +
                    '</div>' +
                '</div>';

    return caja;
}

function downloadfile(indice) {
    var uri = lstdocument.filter(function (i, index) {
        return index == indice
    })[0];
    //location.href = ((mHOST == '0') ? uri.urlarchivo : mHOST + uri.urlarchivo) + "." + uri.ext;
    window.open(((mHOST == '0') ? uri.urlarchivo : mHOST + uri.urlarchivo) + "." + uri.ext, '_Blank');
}

function removefile(indice, id, server, codigo, yUSER) {
    // Eliminando del Contenedor
    lstdocument.splice(indice, 1);

    if (parseInt(server) > 0) {
        // Eliminando de la Base de Datos
        $.ajax({
            async: false,
            type: "POST",
            url: "Frm_Metodos_WEB_Services.aspx/Delete_Files",
            data: JSON.stringify({ xID: id, xUSER: yUSER, xSESION: ySESION_USER }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                var xVal = JSON.stringify(data.d).substring(1, 2);
                var xError = JSON.stringify(data.d).substring(5, JSON.stringify(data.d).length - 1);
                if (xVal == "0") {
                    alertify.alert(xTitulo, '<p style="color:navy;"><strong>' + xError + '</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
                }
                else { // En caso de estar bien todo
                    xContenido = 'Acción Realizada con Exito....'; alertify.success(xContenido);
                }
            },
            error: function (jqXHR, textStatus, errorThrown) {
                if (jqXHR.status === 0) {
                    alertify.alert(xTitulo, '<p style="color:navy;"><strong>No hay Conexión en la RED</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
                } else if (jqXHR.status == 404) {
                    alertify.alert(xTitulo, '<p style="color:navy;"><strong>Página No Encontrada</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
                } else if (jqXHR.status == 500) {
                    alertify.alert(xTitulo, '<p style="color:navy;"><strong>Error Interno en el Servidor</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
                } else if (textStatus === 'parsererror') {
                    alertify.alert(xTitulo, '<p style="color:navy;"><strong>Error de Conversión al Formato JSON</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
                } else if (textStatus === 'timeout') {
                    alertify.alert(xTitulo, '<p style="color:navy;"><strong>Tiempo de Inactividad Agotado</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
                } else if (textStatus === 'abort') {
                    alertify.alert(xTitulo, '<p style="color:navy;"><strong>Solicitud del Servicio Abortado</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
                } else {
                    alertify.alert(xTitulo, '<p style="color:navy;"><strong>Error: ' + jqXHR.responseText + '</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
                }
                return false;
            }
        });
    }
    
    var box = '';
    lstdocument.forEach(function (i, index) {
        box += dibujacaja(index, i.nbarchivo, i.ext, i.server, i.codigo);
    })

    $('#documentos').html(box);
}

function savefiles(yID, yTIPO, yUSER, ySESION) {
    $.ajax({
        async: false,
        type: "POST",
        url: "Frm_Metodos_WEB_Services.aspx/Create_Files",
        data: JSON.stringify({ Mis_Docs: lstdocument, xID: yID, xTIPO: yTIPO, xUSER: yUSER, xSESION: ySESION }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            var xVal = JSON.stringify(data.d).substring(1, 2);
            var xError = JSON.stringify(data.d).substring(5, JSON.stringify(data.d).length - 1);
            if (xVal == "0") {
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>' + xError + '</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
            }
            else { // En caso de estar bien todo
                xContenido = 'Acción Realizada con Exito....'; alertify.success(xContenido);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            if (jqXHR.status === 0) {
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>No hay Conexión en la RED</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
            } else if (jqXHR.status == 404) {
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>Página No Encontrada</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
            } else if (jqXHR.status == 500) {
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>Error Interno en el Servidor</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
            } else if (textStatus === 'parsererror') {
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>Error de Conversión al Formato JSON</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
            } else if (textStatus === 'timeout') {
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>Tiempo de Inactividad Agotado</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
            } else if (textStatus === 'abort') {
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>Solicitud del Servicio Abortado</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
            } else {
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>Error: ' + jqXHR.responseText + '</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
            }
            return false;
        }
    });
}

function listfiles(yID, yTIPO) {
    $.ajax({
        async: false,
        type: "POST",
        url: "Frm_Metodos_WEB_Services.aspx/Listar_Adjuntos",
        data: JSON.stringify({ xID: yID, xTIPO: yTIPO }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (data) {
            var xVal = JSON.stringify(data.d).substring(1, 2);
            var xError = JSON.stringify(data.d).substring(5, JSON.stringify(data.d).length - 1);
            if (xVal == "0") {
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>' + xError + '</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
            }
            else { // En caso de estar bien todo
                var oRegistro = $.parseJSON(data.d); lstdocument.splice(0, lstdocument.length);
                
                $.each(oRegistro, function (pos, elemento) {
                    lstdocument.push({ 'nbarchivo': elemento.nbarchivo, 'urlarchivo': elemento.urlarchivo, 'ext': elemento.ext, 'server': elemento.server, 'id': elemento.id, 'codigo': yID });
                });

                var box = '';
                lstdocument.forEach(function (i, index) {
                    box += dibujacaja(index, i.nbarchivo, i.ext, i.id, i.server, i.codigo, yID_USER);
                })

                $('#documentos').html(box);
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            if (jqXHR.status === 0) {
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>No hay Conexión en la RED</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
            } else if (jqXHR.status == 404) {
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>Página No Encontrada</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
            } else if (jqXHR.status == 500) {
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>Error Interno en el Servidor</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
            } else if (textStatus === 'parsererror') {
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>Error de Conversión al Formato JSON</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
            } else if (textStatus === 'timeout') {
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>Tiempo de Inactividad Agotado</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
            } else if (textStatus === 'abort') {
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>Solicitud del Servicio Abortado</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
            } else {
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>Error: ' + jqXHR.responseText + '</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
            }
            return false;
        }
    });
}

function initdoc() {
    var dropZone = document.getElementById('documentos');
    dropZone.addEventListener('dragover', handleDragOver, false);
    dropZone.addEventListener('drop', handleFileSelect, false);
    document.getElementById('subir').addEventListener('change', handleFileSelect, false);
}

function pad(n, length) {
    var n = n.toString();
    while (n.length < length)
        n = "0" + n;
    return n;
}
    
//--------------------------------------------------------------------
