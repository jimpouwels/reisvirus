var isVisible = false;
var lastScroll = 0;

$(document).ready(function() {
  $("#mobile-menu").mouseup(function(e) {
    $(window).scrollTop(0);
    $("#header-menu").animate({height: 'toggle'}, $("#header-menu").height());
    isVisible = !isVisible;
    e.stopPropagation();
    return false;
  });
  
  $(document).mouseup(function(e) {
      if (!$("#mobile-menu").is(":visible")) {
        return;
      }
      var container = $("#header-menu");
      if (!container.is(e.target) && container.has(e.target).length === 0) {
          if (isVisible) {
              $("#header-menu").animate({height: 'toggle'}, $("#header-menu").height());
              isVisible = false;
          }
      }
      return false;
  });

  $(window).scroll(function(e) {
    if ($("#mobile-menu").is(":visible") && ($(this).scrollTop() > lastScroll)) {
      $("#header-menu").hide();
    }
  });

  $(window).resize(function() {
    if (!$("#mobile-menu").is(":visible")) {
      $("#header-menu").show();
    } else {
      $("#header-menu").hide();
    }
  });

});