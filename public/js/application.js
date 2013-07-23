var updated_player_position = function(player) {
  var current_element = $("#player" + player + "_strip td.active");
  current_element.removeClass('active');
  if(current_element.hasClass('last_cell')){
    alert("YEAYEAYEA Player" + player); 
    // #post to route with url, data, response
  }
  else {
    current_element.next().addClass('active');
  }
};

$(document).ready(function () {
  $(document).on('keyup', function(event) {
    if(event.keyCode == 74){
      updated_player_position(1);
    }
    else if(event.keyCode == 75){
      updated_player_position(2);
    }
  });
});


#on 
