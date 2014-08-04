/*
  *
  * TODO: add your code here!
  *
*/
$(function() { // equivalent document ready

$("#message-wrapper").hide().delay(500).slideDown(1000);

$("#message-wrapper").on("mouseenter", function(the_event) {
  $(this).slideDown(1000);
});


$("message-wrapper").on("mouseleave", (function(the_event) {
  $(this).slideUp(1000);
});

$("body").on("mousemove", function(the_event) {
  if (event.pageY < 50 {
    $("#message-wrapper").slideDown(1000);
  }

  });

});

//EASY WAY

//$("#message-wrapper").slideDown(3000);

//$("message-wrapper").click(function() {
//  $(this).slideUp(1000);
//});
//
//
//


