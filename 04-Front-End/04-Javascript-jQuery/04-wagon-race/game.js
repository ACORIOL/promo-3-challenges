$(function(){

  var input_player1 = {
    keycode: 65
  };

  var input_player2 = {
    keycode: 80
  };

  $ (document).keyup(function(e){
    console.log(e.which);
    if (e.which == input_player1.keycode) {
        $ ("#player1_race td.active").removeClass("active").next().addClass("active");
    } else if (e.which == input_player2.keycode) {
        $ ("#player2_race td.active").removeClass("active").next().addClass("active");
    }
  });

  //$ ('td:last').alert();

});


