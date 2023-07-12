var isVisible = false;

$(document).ready(function() {
  $("#mobile-menu").mouseup(function(e) {
    $("#header-menu").animate({height: 'toggle'}, $("#header-menu").height());
    isVisible = !isVisible;
    e.stopPropagation();
  });
  
  $(document).mouseup(function(e) {
      var container = $("#header-menu");
      if (!container.is(e.target) && container.has(e.target).length === 0) {
          if (isVisible) {
              $("#header-menu").animate({height: 'toggle'}, $("#header-menu").height());
              isVisible = false;
          }
      }
  });

  $(window).scroll(function(e) { 
    $("#header-menu").hide();
  });
});