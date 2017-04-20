/**
 * Created by Boris on 12/19/2015.
 */
var adblockInterference = true;
(function($){
   $(document).ready(function () {

      // TODO: 1. enable cookies or local storage to preserve theme selection and
      // TODO:    only query user for info on first load. Do not show modal if selection has been made previously.
      // TODO: 2. create menu item that allows resetting of visitedBefore variable
      // TODO: 3. provide users with option to change site style:
      // TODO:    remove '.inverted' from sidebar (changes to white and shows colors)

      if(typeof(Storage) !== "undefined") {
         // Code for localStorage/sessionStorage.
         var visitedBefore = localStorage.getItem("visitedBefore");
         console.log("var visitedBefore = ", visitedBefore);
         var userName = localStorage.getItem("userName");

         if(visitedBefore == undefined) {
            localStorage.setItem("visitedBefore", true);
            visitedBefore = true;
            //$('.ui.basic.modal').modal('show');   // Alternate selection method with classes
            $('#initial_settings_config').modal('show');
         } else {
             $("#welcomeUser").text("Welcome, " + userName + "!");
         }
      } else {
         // Sorry! No Web Storage support..
         console.warn("NO LOCAL STORAGE SUPPORT!");
      }


      $('#sidebar_toggle').popup({
          //inline   : true,
          hoverable: true,
          position : 'bottom left',
          delay: {
             show: 200,
             hide: 500
          }
      });


      // Get data from MS DB via HTTP GET Ajax call
      var dataSet = [];
      $.ajax({
         type: "GET",
         dataType: "json",
         url: "/welcome/azureTest",
         success: function(data){
            //alert(JSON.stringify(data));
            dataSet = data.arrayName;

            $('#example').DataTable( {
               data: dataSet,
               fixedColumns: true,
               responsive: true,
               "columns": [
                  { "data": "ID" },
                  { "data": "NAME" },
                  { "data": "EMAIL" },
                  { "data": "JOB_POSITION" },
                  { "data": "SUBJECT_OF_INTEREST" }
               ]
            } );

            for(var p = 0; p < 4; p++)
               $('#adsProgress').progress('increment');
         }
      });


      $('.conversion_form .dropdown').dropdown('set selected', ['b2', 'b3']);

      $('.conversion_form .button').on('click', function() {
         $('.conversion_form .ui.dropdown').dropdown('clear');
      });

      // initialize tabs so they swap content
      $('.demo.menu .item').tab({history:false});
      $('.testContent.menu .item').tab({history:false});

      $('#context1 .menu .item').tab({ context: $('#context1') });
      $('#context2 .menu .item').tab({ context: $('#context2') });
      $('#context3 .menu .item').tab({ context: $('#context3') });
      $('#context4 .menu .item').tab({ context: $('#context4') });
      $('#context5 .menu .item').tab({ context: $('#context5') });
      $('#context6 .menu .item').tab({ context: $('#context6') });
      $('#context7 .menu .item').tab({ context: $('#context7') });
      $('#context8 .menu .item').tab({ context: $('#context8') });
      $('#context9 .menu .item').tab({ context: $('#context9') });
      $('#context10 .menu .item').tab({ context: $('#context10') });
      $('#context11 .menu .item').tab({ context: $('#context11') });
      $('#context12 .menu .item').tab({ context: $('#context12') });
      $('#context13 .menu .item').tab({ context: $('#context13') });
      $('#context14 .menu .item').tab({ context: $('#context14') });
      $('#context15 .menu .item').tab({ context: $('#context15') });
      $('#context16 .menu .item').tab({ context: $('#context16') });
      $('#context17 .menu .item').tab({ context: $('#context17') });
      $('#context18 .menu .item').tab({ context: $('#context18') });
      $('#context19 .menu .item').tab({ context: $('#context19') });
      $('#context20 .menu .item').tab({ context: $('#context20') });
      $('#context21 .menu .item').tab({ context: $('#context21') });
      $('#context22 .menu .item').tab({ context: $('#context22') });
      $('#context23 .menu .item').tab({ context: $('#context23') });
      $('#context24 .menu .item').tab({ context: $('#context24') });
      $('#context25 .menu .item').tab({ context: $('#context25') });
      $('#context26 .menu .item').tab({ context: $('#context26') });
      $('#context27 .menu .item').tab({ context: $('#context27') });
      $('#context28 .menu .item').tab({ context: $('#context28') });
      $('#context29 .menu .item').tab({ context: $('#context29') });
      $('#context30 .menu .item').tab({ context: $('#context30') });
      $('#context31 .menu .item').tab({ context: $('#context31') });
      $('#context32 .menu .item').tab({ context: $('#context32') });
      $('#context33 .menu .item').tab({ context: $('#context33') });
      $('#context34 .menu .item').tab({ context: $('#context34') });
      $('#context35 .menu .item').tab({ context: $('#context35') });
      $('#context36 .menu .item').tab({ context: $('#context36') });
      $('#context37 .menu .item').tab({ context: $('#context37') });
      $('#context38 .menu .item').tab({ context: $('#context38') });
      $('#context39 .menu .item').tab({ context: $('#context39') });
      $('#context40 .menu .item').tab({ context: $('#context40') });
      $('#context41 .menu .item').tab({ context: $('#context41') });
      $('#context42 .menu .item').tab({ context: $('#context42') });
      $('#context43 .menu .item').tab({ context: $('#context43') });
      $('#context44 .menu .item').tab({ context: $('#context44') });
      $('#context45 .menu .item').tab({ context: $('#context45') });
      $('#context46 .menu .item').tab({ context: $('#context46') });
      $('#context47 .menu .item').tab({ context: $('#context47') });
      $('#context48 .menu .item').tab({ context: $('#context48') });
      $('#context49 .menu .item').tab({ context: $('#context49') });


      $('#adsProgress').progress('increment');

      $('.ui.button').on('click', function() {
          // programmatically activating tab
          $.tab('change tab', 'tab name');
      });

      $('.ui.dropdown').dropdown();
      $('#adsProgress').progress('increment');

      var input = document.getElementById("integer_input");

      input.onkeypress = function(e) {
         switch (e.keyCode){
            case 45:
               return this.value.length == 0 ? true : false;
               break;
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
               return true;
               break;
            default:
               $("#integerErrorMsg").html("+/- Integers Only").show().fadeOut(1000);
               return false;
               break;
         }  // end switch
      };  // end onkeypress


       $("#inprogress").click(function(){
           $(".inprogress").toggle();
       });
       $("#notstarted").click(function(){
           $(".notstarted").toggle();
       });
       $("#complete").click(function(){
           $(".complete").toggle();
       });


       var guid = generateUID();
       $("#ticketNumber").text(guid);
       $("#messageField").val("Describe your request here...");

       $("#setUserOptions").click(function() {
           var userName = $("#userName").val();
           console.log("Name entered: " + userName);
           localStorage.setItem("userName", userName);
           $("#welcomeUser").text("Welcome, " + userName + "!");
           $('#initial_settings_config').modal('hide');
       });


       (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
               (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
           m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
       })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

       ga('create', 'UA-97417760-1', 'auto');
       ga('send', 'pageview');


   });  // end document.ready
})(jQuery);  // end function($)

function toggleSidebar() {
   (function toggleSidebar($){
      $('#adsMainSidebar').sidebar('toggle');
      $('.ui.uncover.sidebar').css("z-index","200");
      $('body').removeClass("pushable");
   })(jQuery);
}

function correctCaptcha (response) {
    alert(response);
}

function recaptchaCallback(userResponse) {
    //alert(userResponse);

    $.ajax({
        url: '/welcome/validateCaptcha?userResponse=' + userResponse,
        type: 'post',
        success: function (data) {
            console.log( "reCAPTCHA server side response: " + data );

            var isUserValid = data;
            console.log("isUserValid reCaptcha response from server: " + data);
            if(data === true) {
                $('#submitContactBtn').removeAttr('disabled');
                //$('#submitContactBtn').attr('.notAllowedCursor', '');
            }

        },
        fail: function() {
            alert( "error" );
        }
    });

}

function sendEmail() {
    var toEmail = "arcologydesigns@gmail.com";
    var skipChar = encodeURIComponent("-");
    var dateStamp = encodeURIComponent(new Date($.now()).toDateString() + ": ");

    var emailSubmission = "/welcome/sendEmail?toField=" + toEmail
        + "&ccField=" + skipChar
        + "&subjectField=" + encodeURIComponent($("#ticketNumber").val()) + encodeURIComponent($("#subjectField").val()) + "\""
        + "&messageField=" + dateStamp + "%3Cbr%3E" + encodeURIComponent($("#messageField").val());
    console.log("sendEmail string: " + emailSubmission);

    $.get(emailSubmission,
        function(returnedData){
            console.log(returnedData);
        }).fail(function(){
            console.log("error");
    });
}

function dec2bin(dec){
   return (dec >>> 0).toString(2);
}

function generateUID() {
    // I generate the UID from two parts here
    // to ensure the random number provide enough bits.
    var firstPart = (Math.random() * 46656) | 0;
    var secondPart = (Math.random() * 46656) | 0;
    firstPart = ("000" + firstPart.toString(36)).slice(-3);
    secondPart = ("000" + secondPart.toString(36)).slice(-3);
    return firstPart + secondPart;
}




