$("#modal").hide();

$("#img").click(function() {
  $("#wrapper").css({
    'background-color': 'black',
    'opacity': 0.8,
  })
  $("#modal").fadeIn();
});

$("#modal").click(function() {
  $("#wrapper").css({
    'background-color': '',
    'opacity': 1,
  })
  $("#modal").fadeOut();

});

//autre facon

//$(function(){

//$("#img").click(function(){
//  $("body").append("<div class="black"></div>");
//    var src = $(this).attr("src"); // récupère valeur de l'attribut src
//   var img = $('<img/>').attr({src: src});  // POUR CREER UN ELEMENT (en l'occurence on le récup de L3)
//  ; // ATTENTION CREER N'EST PAS AJOUTER DANS HTML
//    $("body").append($("<div class='my-modal'></div>")).append(img);
//  });

//  $(document).on("click", ".black", function(){ // "douemnt" permet de déf 1 seul evnet handler (si y'a plusieurs .black par ex)
//    $(".my-modal").remove();
//    $(this).remove();
//  });

//});