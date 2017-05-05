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

       var isUserLoggedIn = false;
       var logInMenuButton = $('#logInMenuButton');
       var logInModal = $('#loginModal');

       if(isUserLoggedIn === false) {
           logInMenuButton.text("Sign In");
       } else {
           $('#logInMenuButton').text("Log Out");
       }

       logInMenuButton.click(function () {

           if (logInMenuButton.text() === "Log Out") {
               logInMenuButton.text("Sign In");
           } else {
               logInModal.modal('show');
           }

       });

       $('#signUpOpen').click(function () {
           logInModal.modal('hide');
          $('#signUpModal').modal('show');
       });



      if(typeof(Storage) !== "undefined") {
         // Code for localStorage/sessionStorage.
         var visitedBefore = localStorage.getItem("visitedBefore");
         console.log("var visitedBefore = ", visitedBefore);
         var userName = localStorage.getItem("userName");
         var menuColor = localStorage.getItem("menuColor");
         var footerColor = localStorage.getItem("footerColor");

         if(visitedBefore == undefined) {
            localStorage.setItem("visitedBefore", true);
            visitedBefore = true;
            //$('.ui.basic.modal').modal('show');   // Alternate selection method with classes
            $('#initial_settings_config').modal('show');
         } else {
             $("#welcomeUser").text("Welcome, " + userName + "!");
             $('.ui.inverted.menu').css("background", menuColor);
             $('.footerColor').css("background", footerColor);

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

      var adsProgress = $('#adsProgress');
      for (var p = 0; p < 4; p++)
          adsProgress.progress('increment');


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
          var baseConversionUrl = "/welcome/convertBases?numToConvert=" + num
              + "&fromThisBase=" + fromBase
              + "&toTheseBases=" + toBase;
          console.log("base conversion obj: " + baseConversionUrl);


          $.ajax({
              type: "GET",
              dataType: "json",
              url: baseConversionUrl,
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
      $('#context2 ').tab({ history : true, context: $('#context2') });
      $('#context3 ').tab({ history : true, context: $('#context3') });
      $('#context4 ').tab({ history : true, context: $('#context4') });
      $('#context5 ').tab({ history : true, context: $('#context5') });
      $('#context6 ').tab({ history : true, context: $('#context6') });
      $('#context7 ').tab({ history : true, context: $('#context7') });
      $('#context8 ').tab({ history : true, context: $('#context8') });
      $('#context9 ').tab({ history : true, context: $('#context9') });
      $('#context10 ').tab({ history : true, context: $('#context10') });
      $('#context11 ').tab({ history : true, context: $('#context11') });
      $('#context12 ').tab({ history : true, context: $('#context12') });
      $('#context13 ').tab({ history : true, context: $('#context13') });
      $('#context14 ').tab({ history : true, context: $('#context14') });
      $('#context15 ').tab({ history : true, context: $('#context15') });
      $('#context16 ').tab({ history : true, context: $('#context16') });
      $('#context17 ').tab({ history : true, context: $('#context17') });
      $('#context18 ').tab({ history : true, context: $('#context18') });
      $('#context19 ').tab({ history : true, context: $('#context19') });
      $('#context20 ').tab({ history : true, context: $('#context20') });
      $('#context21 ').tab({ history : true, context: $('#context21') });
      $('#context22 ').tab({ history : true, context: $('#context22') });
      $('#context23 ').tab({ history : true, context: $('#context23') });
      $('#context24 ').tab({ history : true, context: $('#context24') });
      $('#context25 ').tab({ history : true, context: $('#context25') });
      $('#context26 ').tab({ history : true, context: $('#context26') });
      $('#context27 ').tab({ history : true, context: $('#context27') });
      $('#context28 ').tab({ history : true, context: $('#context28') });
      $('#context29 ').tab({ history : true, context: $('#context29') });
      $('#context30 ').tab({ history : true, context: $('#context30') });
      $('#context31 ').tab({ history : true, context: $('#context31') });
      $('#context32 ').tab({ history : true, context: $('#context32') });
      $('#context34 ').tab({ history : true, context: $('#context34') });
      $('#context35 ').tab({ history : true, context: $('#context35') });
      $('#context36 ').tab({ history : true, context: $('#context36') });
      $('#context37 ').tab({ history : true, context: $('#context37') });
      $('#context38 ').tab({ history : true, context: $('#context38') });
      $('#context39 ').tab({ history : true, context: $('#context39') });
      $('#context40 ').tab({ history : true, context: $('#context40') });
      $('#context41 ').tab({ history : true, context: $('#context41') });
      $('#context42 ').tab({ history : true, context: $('#context42') });
      $('#context43 ').tab({ history : true, context: $('#context43') });
      $('#context44 ').tab({ history : true, context: $('#context44') });
      $('#context45 ').tab({ history : true, context: $('#context45') });
      $('#context46 ').tab({ history : true, context: $('#context46') });
      $('#context47 ').tab({ history : true, context: $('#context47') });
      $('#context48 ').tab({ history : true, context: $('#context48') });
      $('#context49 ').tab({ history : true, context: $('#context49') });


       adsProgress.progress('increment');

      $('.ui.button').on('click', function() {
          // programmatically activating tab
          $.tab('change tab', 'tab name');
      });

      $('.ui.dropdown').dropdown();
       adsProgress.progress('increment');



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

           localStorage.setItem("menuColor", "#1B1C1D");
           localStorage.setItem("footerColor", "#1B1C1D");

       });
       $('#redTheme').click(function() {
           $('.ui.inverted.menu').css("background", "#b70611");
           $('.footerColor').css("background", "#b70611");

           localStorage.setItem("menuColor", "#b70611");
           localStorage.setItem("footerColor", "#b70611");
       });
       $('#greenTheme').click(function() {
           $('.ui.inverted.menu').css("background", "#338028");
           $('.footerColor').css("background", "#338028");

           localStorage.setItem("menuColor", "#338028");
           localStorage.setItem("footerColor", "#338028");
       });
       $('#defaultTheme').click(function() {
           $('.ui.inverted.menu').css("background", "#004687");
           $('.footerColor').css("background", "#004687");

           localStorage.setItem("menuColor", "#004687");
           localStorage.setItem("footerColor", "#004687");
       });



       $('.main.ui.container').attr("style", "margin-left: 280px !important;");
       $('#horizontalMenu').attr("style", "margin-left: 280px !important;");


       /*
       * Login form logic
       * */
       $('#loginForm')
           .form({
               fields: {
                   email: {
                       identifier  : 'email',
                       rules: [
                           { type   : 'empty',
                             prompt : 'Please enter your e-mail' },
                           { type   : 'email',
                             prompt : 'Please enter a valid e-mail' }
                       ]},
                   password: {
                       identifier  : 'password',
                       rules: [
                           { type   : 'empty',
                             prompt : 'Please enter your password' },
                           { type   : 'length[6]',
                             prompt : 'Your password must be at least 6 characters' }
                       ]}
               }
           });

       /*
        * Sign Up form logic
        * */
       $('#signUpForm')
           .form({
               fields: {
                   name: {
                       identifier  : 'name',
                       rules: [
                           { type   : 'empty',
                             prompt : 'Please enter your name' }
                       ]
                   },
                   email: {
                       identifier  : 'email',
                       rules: [
                           { type   : 'empty',
                             prompt : 'Please enter your e-mail' },
                           { type   : 'email',
                             prompt : 'Please enter a valid e-mail' }
                       ]
                   },
                   newPassword: {
                       identifier  : 'newPassword',
                       rules: [
                           { type   : 'empty',
                             prompt : 'Please enter your password' },
                           { type   : 'length[6]',
                             prompt : 'Your password must be at least 6 characters' }
                       ]
                   },
                   password2: {
                       identifier: 'password2',
                       rules: [
                           {
                               type   : 'match[newPassword]',
                               prompt : 'Your passwords confirmation must match' }
                       ]
                   },
                   agreeWithPrivacy: {
                       identifier  : 'agreeWithPrivacy',
                       rules: [
                           {
                               type   : 'checked',
                               prompt : 'Please read the privacy policy and check if you agree'
                           }
                       ]
                   }
               }
           });

       $('#newUserName').keypress(function(e){
           var txt = String.fromCharCode(e.which);
           console.log(txt + ' : ' + e.which);
           if(!txt.match(/[A-Za-z0-9+#.]/))
           {
               $("#nameErrorMsg").html("A-Za-z0-9+#. only").show().fadeOut(2000);
               return false;
           }
       });

       $('#newUserEmail').keypress(function(e){
           var txt = String.fromCharCode(e.which);
           console.log(txt + ' : ' + e.which);
           if(!txt.match(/[A-Za-z0-9+#.@]/))
           {
               $("#emailErrorMsg").html("A-Za-z0-9+#.@ only").show().fadeOut(2000);
               return false;
           }
       });

       /**
        * The Content-Type header is used by @RequestBody to determine what format the data being sent from the
        * client in the request is. The accept header is used by @ResponseBody to determine what format to sent
        * the data back to the client in the response. That's why you need both headers.
        * */
       $('#registerNewUser').click(function () {
           var registerUserUrl = "/welcome/createNewUser";
           var name = $('#newUserName').val().toString();
           var email = $('#newUserEmail').val().toString();
           var password = $('#newUserPassword').val().toString();

           console.log(name + " " + email);

           $.ajax({
               headers: {
                   'Accept': 'application/json',
                   'Content-Type': 'application/json'
               },
               type: "POST",
               dataType: "json",
               url: registerUserUrl,
               data: JSON.stringify({
                   Name: name,
                   Email: email,
                   Password: password
               }),
               success: function (response) {
                   console.log("new user insert response: " + response);
               },
               fail: function () {
                   console.log("New user registration error.");
               }
           });
           return false; // the onclick function must return false to prevent page reload
       });


       $('#validateExistingUser').click(function () {
           var validateUserUrl = "/welcome/validateUser";



           var email = $('#existingUserEmail').val().toString();
           var password = $('#existingUserPassword').val().toString();



           alert(name + " " + email);

           $.ajax({
               headers: {
                   'Accept': 'application/json',
                   'Content-Type': 'application/json'
               },
               type: "POST",
               dataType: "json",
               url: validateUserUrl,
               data: JSON.stringify({
                   Email: email,
                   Password: password
               }),
               success: function (response) {
                   //alert(response);

                   if (response === true) {
                       //alert("change to Log Out");
                       $('#logInMenuButton').text("Log Out");
                       logInModal.modal('hide');
                   }
               },
               fail: function () {
                   console.log("New user registration error.");
               }
           });
           return false; // the onclick function must return false to prevent page reload
       });





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
    console.log("contract view area");
    $('.main.ui.container').attr("style", "margin-left: 280px !important;");
    $('#horizontalMenu').attr("style", "margin-left: 280px !important; ");
    $('#adsProgress').attr("style", "margin-left: 280px !important; ");
}

function expandView() {
    console.log("expand view area");
    $('.main.ui.container').attr("style", "margin-left: 40px !important;");
    $('#horizontalMenu').attr("style", "margin-left: 40px !important;");
    $('#adsProgress').attr("style", "margin-left: 40px !important;");
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