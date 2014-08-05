$(function(){

  var input_player1 = {
    keycode: 65
  };

  var input_player2 = {
    keycode: 80
  };

  $(document).keyup(function(e){
    console.log(e.which);
    if (e.which == input_player1.keycode) {
        $("#player1_race td.active").removeClass("active").next().addClass("active");
        if ('is last ?', $("#player1_race td.active").is(':last-child') == true) {
          alert("Congrats, Player1, You Won!");
        }
    } else if (e.which == input_player2.keycode) {
        $ ("#player2_race td.active").removeClass("active").next().addClass("active");
        if ('is last ?', $("#player2_race td.active").is(':last-child') == true) {
          alert("Congrats, Player2, You Won!");
        }
    }
  });

});



   //$ (#player1_race td.active == #player1_race td:last).alert("Congrats Player1, you won!");

//});

//$(function(){
  //$ if (#player1_race td.active == #player1_race td:last) {
    //$ alert("Congrats Player1, you won!");
 // } else if (#player2_race td.active == #player2_race td:last) {}
   // $ alert("Congrats Player2, you won!");
  //}
//});




