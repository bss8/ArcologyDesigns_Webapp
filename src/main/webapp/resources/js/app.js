/**
 * Created by Boris on 12/19/2015.
 * fn property is just an alias to the prototype property
 * The jQuery identifier (or $) is just a constructor function
 * and all instances created with it, inherit from the constructor's prototype.
 * jQuery.fn === jQuery.prototype
 * 'window.foo = foo' gives 'foo' a global scope
 */

(function($){
   $(document).ready(function () {

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


      $(".close.icon").click(function(){
          $(this).parent().hide();
      });


       for (var p = 0; p < 4; p++)
           $('#adsProgress').progress('increment');


      $('.select_a_base').dropdown('set selected', ['2', '3']);
      $('#fromThisBase').dropdown('set selected', 10);
      $('#clearBaseDropdown').on('click', function() {
         $('.conversion_form .ui.dropdown').dropdown('clear');
      });

      $('#submitBaseConversion').on('click', function () {
         //console.log($('.select_a_base').dropdown('get value').toString());
          var num = $('#integer_input').val();
          var fromBase = $('#fromThisBase').dropdown('get value');
          var toBase = $('.select_a_base').dropdown('get value');

          console.log("Convert " + num + " from base " + fromBase + " to base " + toBase);
          var baseConversionObj = "/welcome/convertBases?numToConvert=" + num
              + "&fromThisBase=" + fromBase
              + "&toTheseBases=" + toBase;
          console.log("base conversion obj: " + baseConversionObj);


          $.ajax({
              type: "GET",
              dataType: "json",
              url: baseConversionObj,
              success: function(response) {
                  console.log("base conversion response: " + response);

                  dataSet = response.jsonbasedata;
                  console.log(dataSet);
                  $('#baseResults').dataTable( {
                     destroy: true,
                     data: dataSet,
                     fixedColumns: true,
                     responsive: true,
                     "columns": [
                        { "data": "base2" },
                        { "data": "base3" }
                     ]
                  });


              },
              fail: function(){
                  console.log("base conversion error!");
              }
          });

      });

      // initialize tabs so they swap content
      $('.demo.menu .item').tab({history:false});
      $('.testContent.menu .item').tab({history:false});

      // $('#context1 .menu .item').tab({ history : true, context: $('#context1') });  //collective resources deleted
      $('#context2 .menu .item').tab({ history : true, context: $('#context2') });
      $('#context3 .menu .item').tab({ history : true, context: $('#context3') });
      $('#context4 .menu .item').tab({ history : true, context: $('#context4') });
      $('#context5 .menu .item').tab({ history : true, context: $('#context5') });
      $('#context6 .menu .item').tab({ history : true, context: $('#context6') });
      $('#context7 .menu .item').tab({ history : true, context: $('#context7') });
      $('#context8 .menu .item').tab({ history : true, context: $('#context8') });
      $('#context9 .menu .item').tab({ history : true, context: $('#context9') });
      $('#context10 .menu .item').tab({ history : true, context: $('#context10') });
      $('#context11 .menu .item').tab({ history : true, context: $('#context11') });
      $('#context12 .menu .item').tab({ history : true, context: $('#context12') });
      $('#context13 .menu .item').tab({ history : true, context: $('#context13') });
      $('#context14 .menu .item').tab({ history : true, context: $('#context14') });
      $('#context15 .menu .item').tab({ history : true, context: $('#context15') });
      $('#context16 .menu .item').tab({ history : true, context: $('#context16') });
      $('#context17 .menu .item').tab({ history : true, context: $('#context17') });
      $('#context18 .menu .item').tab({ history : true, context: $('#context18') });
      $('#context19 .menu .item').tab({ history : true, context: $('#context19') });
      $('#context20 .menu .item').tab({ history : true, context: $('#context20') });
      $('#context21 .menu .item').tab({ history : true, context: $('#context21') });
      $('#context22 .menu .item').tab({ history : true, context: $('#context22') });
      $('#context23 .menu .item').tab({ history : true, context: $('#context23') });
      $('#context24 .menu .item').tab({ history : true, context: $('#context24') });
      $('#context25 .menu .item').tab({ history : true, context: $('#context25') });
      $('#context26 .menu .item').tab({ history : true, context: $('#context26') });
      $('#context27 .menu .item').tab({ history : true, context: $('#context27') });
      $('#context28 .menu .item').tab({ history : true, context: $('#context28') });
      $('#context29 .menu .item').tab({ history : true, context: $('#context29') });
      $('#context30 .menu .item').tab({ history : true, context: $('#context30') });
      $('#context31 .menu .item').tab({ history : true, context: $('#context31') });
      $('#context32 .menu .item').tab({ history : true, context: $('#context32') });
      $('#context34 .menu .item').tab({ history : true, context: $('#context34') });
      $('#context35 .menu .item').tab({ history : true, context: $('#context35') });
      $('#context36 .menu .item').tab({ history : true, context: $('#context36') });
      $('#context37 .menu .item').tab({ history : true, context: $('#context37') });
      $('#context38 .menu .item').tab({ history : true, context: $('#context38') });
      $('#context39 .menu .item').tab({ history : true, context: $('#context39') });
      $('#context40 .menu .item').tab({ history : true, context: $('#context40') });
      $('#context41 .menu .item').tab({ history : true, context: $('#context41') });
      $('#context42 .menu .item').tab({ history : true, context: $('#context42') });
      $('#context43 .menu .item').tab({ history : true, context: $('#context43') });
      $('#context44 .menu .item').tab({ history : true, context: $('#context44') });
      $('#context45 .menu .item').tab({ history : true, context: $('#context45') });
      $('#context46 .menu .item').tab({ history : true, context: $('#context46') });
      $('#context47 .menu .item').tab({ history : true, context: $('#context47') });
      $('#context48 .menu .item').tab({ history : true, context: $('#context48') });
      $('#context49 .menu .item').tab({ history : true, context: $('#context49') });


      $('#adsProgress').progress('increment');

      $('.ui.button').on('click', function() {
          // programmatically activating tab
          $.tab('change tab', 'tab name');
      });

      $('.ui.dropdown').dropdown();
      $('#adsProgress').progress('increment');



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
       console.log("Generated GUID: " + guid);
       $("#ticketNumber").text(guid);
       $("#messageField").val("Describe your request here...");

       $("#setUserOptions").click(function() {
           var userName = $("#userName").val();
           console.log("Name entered: " + userName);
           localStorage.setItem("userName", userName);
           $("#welcomeUser").text("Welcome, " + userName + "!");
           $('#initial_settings_config').modal('hide');
       });

       /* Google Analytics tie-in snippet */
       (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
               (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
           m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
       })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

       ga('create', 'UA-97417760-1', 'auto');
       ga('send', 'pageview');

       /*
       * Google Drive API Logic
       * */
       gapi.load('auth:client', handleClientLoad);

       function handleClientLoad() {
           gapi.client.setApiKey('AIzaSyCecGDdAmGexEKXYGYnZqEGSuPZPFOCrEg');
           makeApiCall();
       }

       function makeApiCall() {
           gapi.client.load('drive', 'v2', makeRequest);
       }

       function makeRequest() {
           var fileId = '0B_lD7FHorWGzVWtIUlRWai1oNFE';
           var request = gapi.client.drive.files.get({'fileId': fileId});

           request.execute(function (resp) {
               $('#title1').replaceWith(resp.title);
               $('#description1').replaceWith(resp.description);
               $('#date1').replaceWith(resp.createdDate);

           });
       }

       $('#darkTheme').click(function() {
           $('.ui.inverted.menu').css("background", "#1B1C1D");
           $('.footerColor').css("background", "#1B1C1D");
       });
       $('#redTheme').click(function() {
           $('.ui.inverted.menu').css("background", "#b70611");
           $('.footerColor').css("background", "#b70611");
       });
       $('#greenTheme').click(function() {
           $('.ui.inverted.menu').css("background", "#338028");
           $('.footerColor').css("background", "#338028");
       });
       $('#defaultTheme').click(function() {
           $('.ui.inverted.menu').css("background", "#004687");
           $('.footerColor').css("background", "#004687");
       });



       $('.main.ui.container').attr("style", "margin-left: 280px !important;");
       $('#horizontalMenu').attr("style", "margin-left: 280px !important;");

       });  // end document.ready
})(jQuery);  // end function($)


// $.fn.clicktoggle = function(a, b) {
//     return this.each(function () {
//         var clicked = false;
//         $(this).bind("click", function () {
//             if(clicked) {
//                 clicked = false;
//                 return b.apply(this, arguments);
//             }
//             clicked = true;
//             return a.apply(this, arguments);
//         })
//     });
// };

function contractView() {
    alert("contract");
    $('.main.ui.container').attr("style", "margin-left: 280px !important;");
    $('#horizontalMenu').attr("style", "margin-left: 280px !important;");
}

function expandView() {
    alert("expand");
    $('.main.ui.container').attr("style", "margin-left: 40px !important;");
    $('#horizontalMenu').attr("style", "margin-left: 40px !important;");
}

function toggleSidebar() {
   (function toggleSidebar($){

       if( $('.main.ui.container').attr("style") === "margin-left: 280px !important;" ) {
           expandView();
       } else {
           contractView();
       }

      $('#adsMainSidebar').sidebar('toggle');
      $('.ui.uncover.sidebar').css("z-index","200");
      $('body').removeClass("pushable");

   })(jQuery);
}

function recaptchaCallback(userResponse) {
    console.log("reCAPTCHA user response: " + userResponse);

    $.ajax({
        url: '/welcome/validateCaptcha?userResponse=' + userResponse,
        type: 'post',
        success: function (data) {
            console.log( "reCAPTCHA server side response: " + data );

            var isUserValid = data;
            console.log("isUserValid reCaptcha response from server: " + data);
            if(data === "true") {
                console.log("reCaptcha success: " + data);
                $('#submitContactBtn').removeAttr('disabled');
                //$('#submitContactBtn').attr('.notAllowedCursor', '');
            }

        },
        fail: function(e) {
            console.error( "reCaptcha error" + e );
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

function generateUID() {
    // I generate the UID from two parts here
    // to ensure the random number provide enough bits.
    var firstPart = (Math.random() * 46656) | 0;
    var secondPart = (Math.random() * 46656) | 0;
    firstPart = ("000" + firstPart.toString(36)).slice(-3);
    secondPart = ("000" + secondPart.toString(36)).slice(-3);
    return firstPart + secondPart;
}

/*
 * Cannot be defined only inside the document.ready handler's scope, need to move the functions outside
 * if we want to call it via inline script on page
 * */
function loadAzureData() {

    // Get data from MS DB via HTTP GET Ajax call
    var dataSet = [];
    $.ajax({
        type: "GET",
        dataType: "json",
        url: "/welcome/azureTest",
        success: function (data) {
            //alert(JSON.stringify(data));
            dataSet = data.arrayName;
            console.log("azure dataSet: " + dataSet);
            console.log("azure data: " + data);
            $('#example').DataTable({
                data: dataSet,
                fixedColumns: true,
                responsive: true,
                "columns": [
                    {"data": "ID"},
                    {"data": "NAME"},
                    {"data": "EMAIL"},
                    {"data": "JOB_POSITION"},
                    {"data": "SUBJECT_OF_INTEREST"}
                ]
            });
        }
    });
}






