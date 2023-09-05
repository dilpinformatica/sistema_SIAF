// Variable Global
var xTitulo = '<div class="ui-widget"><div class="ui-state-highlight ui-corner-all" style="padding:0 .7em;"><p style="color: #cd0a0a;"><span class="ui-icon ui-icon-info" style="float:left;margin-right: .3em;" ></span><strong>Auditor del Sistema...</strong></p></div></div>';

$(document).ready(function () {
    try {
        // Evitar ir atras...
        if (history.forward(1)) {
            location.replace(history.forward(1));
        }

        $("#xLogo_Entrada").attr('src', 'images/Logo_Dologin.png');
        $("#aTitulo").attr('href', 'images/login.png');

        //override defaults
        alertify.defaults.theme.ok = "btn btn-primary";
        alertify.defaults.theme.cancel = "btn btn-danger";
        alertify.defaults.theme.input = "form-control";
                
        // Limpia los Inputs
        $('#txt_Login').val('').focus();
        $('#txt_clave').val(''); 

        // Llamada a la Funcion del evento KeyPress
        $('#txt_Login').keypress(function (event) {
            if (event.keyCode == 13) {
                $('#txt_clave').focus(); 
                event.preventDefault(); // Detiene el proceso..
            }
        });

        $('#txt_clave').keypress(function (event) {
            if (event.keyCode == 13) {
                $('#Cmd_Ok').focus(); 
                event.preventDefault(); // Detiene el proceso..
            }
        });

        $("form#signin").submit(function () {
            var username = $("input#txt_Login").val();
            if (username == "") {
                xContenido = 'Debe de digitar el Login del Usuario...';
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>' + xContenido + '</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
                $("input#txt_Login").focus(); return false;
            }

            var password = $("input#txt_clave").val();
            if (password == "") {
                xContenido = 'Debe de digitar el Login del Usuario...';
                alertify.alert(xTitulo, '<p style="color:navy;"><strong>' + xContenido + '</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
                $("input#txt_clave").focus(); return false;
            }
                        
            $("#Ingreso").html("<h4>Inicio de Sesión...<img src='images/busy.gif' alt='Conectando..' width='15'/></h4>"); $("#Ingreso").css({ color: "black" });

            LogTheUserIn(username, password);
            
            return false;
        });

    } catch (ex) {
        alertify.alert(xTitulo, '<p style="color:navy;"><strong>' + ex.message + '</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
    }

});

function onLoginOK(e) {
    var IndexOfComma = e.indexOf(",");
    if (e.substring(0, IndexOfComma) == '1') {
        $("#Ingreso").html("<h4>Bienvenido!!!<img src='images/busy.gif' alt='Conectando..' width='15'/></h4>"); $("#Ingreso").css({ color: "black" });
    } else {
        var ErrMsg = e.substring(IndexOfComma + 1);
        if (ErrMsg.length > 50) {
            $("#Ingreso").html("Error de Sessión de Windows!!!<img src='images/busy.gif' alt='Conectando..' width='15'/>"); $("#Ingreso").css({ color: "red" });
            xContenido = ErrMsg;
            alertify.alert(xTitulo, '<p style="color:navy;"><strong>' + xContenido + '</strong></p>').setting({ 'modal': true, 'closable': false, 'movable': false, 'overflow': false, 'transition': 'slide', 'buttonFocus': 'ok', 'buttonReverse': true, 'label': 'Aceptar' }).show();
        }
        else { $("#Ingreso").html(ErrMsg); $("#Ingreso").css({ color: "red" }); $("input#txt_Login").focus(); }
    }
};
