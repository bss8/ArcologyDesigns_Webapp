/**
 * Created by VZ9YFG on 12/19/2015.
 */

(function($){
   $(document).ready(function () {

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
         }
      });

      // initialize tabs so they swap content
      $('.demo.menu .item').tab({history:false});

      $('.ui.button').on('click', function() {
          // programmatically activating tab
          $.tab('change tab', 'tab name');
      });

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
               $("#errmsg").html("Digits Only").show().fadeOut("slow");
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
   })(jQuery);
}

function dec2bin(dec){
   return (dec >>> 0).toString(2);
}