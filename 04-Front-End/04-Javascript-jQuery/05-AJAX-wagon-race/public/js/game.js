var start = Date.now(),
    player1_name,
    player2_name;
    gride_size = 10;

function time_elapsed() {
    var end = Date.now(),
        elapsed = (end-start)/1000;
    return elapsed;
}

function reset() {
  $('#player1, #player2')
    .find('.active')
      .removeClass('active')
    .end()
    .find('td:first-child')
      .addClass('active');
}

function forward(row) {
  var active = row.find('.active');
      next = active.next();

  active.removeClass('active');
  next.addClass('active');


  if (next.is(':last-child')) {
      elapsed = time_elapsed();
        if (row.is('#player1')) {
          alert(player1_name + " wins in " + elapsed + " seconds!");
        }
        else {
          alert(player2_name + " wins in " + elapsed + " seconds! Click OK to play again!");
      }
      reset();
  }
 }

$(function() {
  var session_id,
      start_button = $('#button'),
      form = $('#form'),
      player1 = $('#player1'),
      player2 = $('#player2');


  $.getJSON('http://localhost:4567/session/create', function(json){
    //console.debug(json);
    session_id = json.id;
    start_button.show();
  });

  start_button.on('click', function() {
    start_button.hide();
    form.show();
    start;
  });

  // beginning_time.on('submit', function (e) {
  //   $.setTimeout(function(){alert('Game Started!')},1000);
  //   });

  form.on('submit', function(e) {
    e.preventDefault();
    player1_name = $('#player1_name').val();
    player2_name = $('#player2_name').val();
    var data = JSON.stringify({
      players: [
        { name: player1_name },
        { name: player2_name }
      ]
    });
    $.post('http://localhost:4567/session/' + session_id + '/game/create', data, function(json) {
      form.hide();
      $('#table').show();

      $(document).on('keyup', function(e) {
        if (e.keyCode == 65) {
          forward(player1);
        }
        else if (e.keyCode == 80) {
          forward(player2);
        }
      });
    });
  });
});


