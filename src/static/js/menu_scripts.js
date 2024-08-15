var isVisible = false;
var lastScroll = 0;

function hideMobileMenu() {
    isVisible = false;
    var mobileNavigation = $("#mobile-navigation");
    mobileNavigation.stop();
    mobileNavigation.animate({"width": "0vw", opacity: 0}, 350);
    $(".mobile-menu").css('display', '');
}

$(document).ready(function() {
  $("#mobile-navigation-close-link").mouseup(function(e) {
      hideMobileMenu();
      return false;
  });

  $(".mobile-menu").mouseup(function(e) {
    var mobileNavigation = $("#mobile-navigation");
    mobileNavigation.stop();
    var mobileMenu = $(".mobile-menu");
    isVisible = true;
    mobileNavigation.animate({"width": "90vw", opacity: 1}, 350);
    mobileMenu.hide();
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
    hideMobileMenu();
    if (!$(".mobile-menu").is(":visible")) {
      $(".header-menu").show();
      isVisible = true;
    } else {
      $(".header-menu").hide();
      isVisible = false;
    }
  });

});