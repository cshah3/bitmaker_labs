$(function() {

  var ipAddress = "http://10.0.0.74:8071/motion-control/update";
  // var ipAddress = "http://localhost:8071/motion-control/update";

  var displayNotification = function(text) {
    $(".notifications").text(text);
  }

  $(document).keydown(function (e) {
    if(e.which == 38) { // up
      $.ajax(ipAddress, {
        data: {forward: 1},
        dataType: "jsonp",
        success: function() { displayNotification("To infinity and beyond!") }
      });
    };
    if(e.which == 83) { // s
      $.ajax(ipAddress, {
        data: {forward: 0},
        dataType: "jsonp",
        success: function() { displayNotification("You shall not pass!") }
      });
    };
    if(e.which == 37) { // left
      $.ajax(ipAddress, {
        data: {turn: -1},
        dataType: "jsonp",
        success: function() { displayNotification("To the left, to the left.") }
      });
    };
    if(e.which == 39) { // right
      $.ajax(ipAddress, {
        data: {turn: 1},
        dataType: "jsonp",
        success: function() { displayNotification("To the right, to the right.") }
      });
    };
    if(e.which == 40) { // down
      $.ajax(ipAddress, {
        data: {forward: -1},
        dataType: "jsonp",
        success: function() { displayNotification("Watch out - backing up.") }
      });
    };
    if(e.which == 65) { // a
      $.ajax(ipAddress, {
        data: {strafe: -1},
        dataType: "jsonp",
        success: function() { displayNotification("Hammer time! (to the left)") }
      });
    };
    if(e.which == 68) { // d
      $.ajax(ipAddress, {
        data: {strafe: 1},
        dataType: "jsonp",
        success: function() { displayNotification("Hammer time! (to the right)") }
      });
    };
  });
});