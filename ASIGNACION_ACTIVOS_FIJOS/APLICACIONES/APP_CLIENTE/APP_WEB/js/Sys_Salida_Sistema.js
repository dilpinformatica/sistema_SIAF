if (history.forward(1)) { location.replace(history.forward(1)) }

$(document).on("ready", function () {
    $("#aTitulo").attr('href', 'images/catalogicon.png');
    
    $("#Cmd_Regresar").on("click", function () {
        var mPORTAL = $("#HOST_APP_PORTAL").val();
        window.open(mPORTAL, "_self");
    });
});