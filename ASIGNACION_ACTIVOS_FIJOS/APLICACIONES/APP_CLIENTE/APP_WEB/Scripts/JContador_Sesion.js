// Variables Globales de la pagina
var idleTime = 7200000; // 10 minutos number of miliseconds until the user is considered idle (Tiempo de Inactividad para activarse = 2 segundos = 2 * 1000.  Ultimo tiempo: 15 ((60 * 60 * 1000) / 4) minutos)
var initialSessionTimeoutMessage = 'Su Sesión en la Aplicación Expirará en <span id="sessionTimeoutCountdown"></span> Segundos.<br /><br />De Click en el Botón <b>ACEPTAR</b> para continuar con su Sesión Actual.';
var sessionTimeoutCountdownId = 'sessionTimeoutCountdown';
var redirectAfter = 30; // number of seconds to wait before redirecting the user (Lapso de Tiempo regresiva antes de cerrarse...a 30 segundos)
var redirectTo = 'Dologin'; // URL to relocate the user to once they have timed out 
var keepAliveURL = 'Fondo'; // URL to call to keep the session alive 
var expiredMessage = 'Su Sesión ha Expirado o Terminado. Va ser Redirigido a la Página LOGIN.'; // message to show user when the countdown reaches 0
var running = false; // var to check if the countdown is running
var timer; // reference to the setInterval timer so it can be stopped

$(document).ready(function() {
    // create the warning window and set autoOpen to false
    var sessionTimeoutWarningDialog = $("#sessionTimeoutWarning");
    $(sessionTimeoutWarningDialog).html(initialSessionTimeoutMessage);
    $(sessionTimeoutWarningDialog).dialog({
        title: 'Advertencia: Expiración del Tiempo de la Sesión Actual',
        dialogClass: "Estilos_Ventanas_Modales",
        autoOpen: false,    // set this to false so we can manually open it
        closeOnEscape: false,
        draggable: false,
        width: 550,
        minHeight: 50,
        modal: true,
        beforeclose: function() { // bind to beforeclose so if the user clicks on the "X" or escape to close the dialog, it will work too
            // stop the timer
            clearInterval(timer);
 
            // stop countdown
            running = false;
 
            // ajax call to keep the server-side session alive
            $.ajax({
              url: keepAliveURL,
              async: false
            });
        },
        buttons: [{
            text: "ACEPTAR",
            click: function () {
                $(this).dialog("close");
            },
            class: "ui-button-spl2"
        }],
        resizable: false,
        open: function() {
            // scrollbar fix for IE
            $('body').css('overflow','hidden');
        },
        close: function() {
            // reset overflow
            $('body').css('overflow','auto');
        }
    }).dialog({
        position: {
            my: "center center",
            at: "center center",
            of: window
        }
    }); // end of dialog
 
 
    // start the idle timer
    $.idleTimer(idleTime);
 
    // bind to idleTimer's idle.idleTimer event
    $(document).bind("idle.idleTimer", function(){
        // if the user is idle and a countdown isn't already running
        if($.data(document,'idleTimer') === 'idle' && !running){
            var counter = redirectAfter;
            running = true;
 
            // intialisze timer
            $('#' + sessionTimeoutCountdownId).html(redirectAfter);

            // open dialog
            $(sessionTimeoutWarningDialog).dialog('open');
 
            // create a timer that runs every second
            timer = setInterval(function(){
                counter -= 1;
 
                // if the counter is 0, redirect the user
                if(counter === 0) {
                    $(sessionTimeoutWarningDialog).html(expiredMessage);
                    $(sessionTimeoutWarningDialog).dialog('disable');
                    window.location.href = redirectTo;
                } else {
                    $('#'+sessionTimeoutCountdownId).html(counter);
                };
            }, 1000);
        };
    });
 
});