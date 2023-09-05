// Variable Global
var yUser = "", yID_ROL = 0;

$(document).ready(function () {
    // Evitar ir atras...
    if (history.forward(1)) {
        location.replace(history.forward(1));
    }

    yUser = $("#LOG_USER").val();
    yID_ROL = $("#ID_ROL_USER").val();

    $("#xFondo_Principal").attr('src', 'images/FONDO_12.jpg');
    
});