function reset() {
  console.debug('reset');
  $('#player1_race, #player2_race')
    .find('.active')
      .removeClass('active')
    .end()
    .find('td:first-child')
      .addClass('active');
}

$(function() {
  var input_player1 = {
    keycode: 65
  };

  var input_player2 = {
    keycode: 80
  };

  $(document).keyup(function(e) {
    console.log(e.which);
    if (e.which == input_player1.keycode) {
        $("#player1_race td.active").removeClass("active").next().addClass("active");
        if ($("#player1_race td.active").is(':last-child')) {
          alert("Congrats, Player1, You Won!");
          reset();
        }
    } else if (e.which == input_player2.keycode) {
        $ ("#player2_race td.active").removeClass("active").next().addClass("active");
        if ($("#player2_race td.active").is(':last-child')) {
          alert("Congrats, Player2, You Won!");
          reset();
        }
    }
  });
});


