var isVisible = false;
var lastScroll = 0;

$(document).ready(function() {
  $(".mobile-menu").mouseup(function(e) {
    var headerMenu = $(this).parent().find(".header-menu");
    headerMenu.animate({height: 'toggle'}, headerMenu.height());
    isVisible = !isVisible;
    e.stopPropagation();
    return false;
  });

  $(document).mouseup(function(e) {
      if (!$(".mobile-menu").is(":visible")) {
        return;
      }
      var container = $(this).find(".header-menu").is(':visible');
      if (container) {
          $(".header-menu").each(function(m) { $(this).hide(); });
      }
      return false;
  });

  $(window).scroll(function(e) {
    if ($(".mobile-menu").is(":visible") && ($(this).scrollTop() > lastScroll)) {
      $(".header-menu").hide();
      isVisible = false;
    }
  });

  $(window).resize(function() {
    if (!$(".mobile-menu").is(":visible")) {
      $(".header-menu").show();
      isVisible = true;
    } else {
      $(".header-menu").hide();
      isVisible = false;
    }
  });

});