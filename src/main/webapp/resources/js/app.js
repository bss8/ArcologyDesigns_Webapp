/**
 * Created by VZ9YFG on 12/19/2015.
 */
var adblockInterference = true;
(function($){
   $(document).ready(function () {
      // TODO: enable cookies or local storage to preserve theme selection and
      // TODO: only query user for info on first load. Do not show modal if selection has been made.
      $('.ui.basic.modal').modal('show');

      var dataSet = [];
      $.ajax({
         type: "GET",
         dataType: "json",
         url: "/ads-webapp/azureTest",
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

            for(var p = 0; p < 3; p++)
               $('#adsProgress').progress('increment');
         }

      });

      // initialize tabs so they swap content
      $('.demo.menu .item').tab({history:false});
      $('.testContent.menu .item').tab({history:false});

      $('#context1 .menu .item').tab({ context: $('#context1') });
      $('#context2 .menu .item').tab({ context: $('#context2') });
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

      $('#adsProgress').progress('increment');

      $('.ui.button').on('click', function() {
          // programmatically activating tab
          $.tab('change tab', 'tab name');
      });

      $('.ui.dropdown').dropdown();
      $('#adsProgress').progress('increment');

      var input = document.getElementById("myInput");

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
      };

   });  // end document.ready
})(jQuery);  // end function($)

function toggleSidebar() {
   (function toggleSidebar($){
      $('#adsMainSidebar').sidebar('toggle');
      $('.ui.uncover.sidebar').css("z-index","200");
      $('body').removeClass("pushable")
   })(jQuery);
}

function dec2bin(dec){
   return (dec >>> 0).toString(2);
}


// CUSTOM ALERT CODE

var ALERT_TITLE = "Oops!";
var ALERT_BUTTON_TEXT = "Ok";

if(document.getElementById) {
   window.alert = function(txt) {
      createCustomAlert(txt);
   }
}

function createCustomAlert(txt) {
   d = document;

   if(d.getElementById("modalContainer")) return;

   mObj = d.getElementsByTagName("body")[0].appendChild(d.createElement("div"));
   mObj.id = "modalContainer";
   mObj.style.height = d.documentElement.scrollHeight + "px";

   alertObj = mObj.appendChild(d.createElement("div"));
   alertObj.id = "alertBox";
   if(d.all && !window.opera) alertObj.style.top = document.documentElement.scrollTop + "px";
   alertObj.style.left = (d.documentElement.scrollWidth - alertObj.offsetWidth)/2 + "px";
   alertObj.style.visiblity="visible";

   h1 = alertObj.appendChild(d.createElement("h1"));
   h1.appendChild(d.createTextNode(ALERT_TITLE));

   msg = alertObj.appendChild(d.createElement("p"));
   //msg.appendChild(d.createTextNode(txt));
   msg.innerHTML = txt;

   btn = alertObj.appendChild(d.createElement("a"));
   btn.id = "closeBtn";
   btn.appendChild(d.createTextNode(ALERT_BUTTON_TEXT));
   btn.href = "#";
   btn.focus();
   btn.onclick = function() { removeCustomAlert();return false; }

   alertObj.style.display = "block";

}

function removeCustomAlert() {
   document.getElementsByTagName("body")[0].removeChild(document.getElementById("modalContainer"));
}
function ful(){
   alert('Alert this pages');
}