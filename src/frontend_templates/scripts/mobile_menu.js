let mobileNavigation;
let mobileHamburgerMenu;
let mobileNavigationCloseButton;

$(document).ready(function() {
    mobileNavigation = $("#mobile-navigation");
    mobileHamburgerMenu = $(".mobile-hamburger-menu");
    mobileNavigationCloseButton = $("#mobile-navigation-close-link");

    mobileNavigationCloseButton.mouseup(function() {
        hideMobileMenu();
        return false;
    });

    mobileHamburgerMenu.mouseup(function() {
        mobileNavigation.stop();
        mobileNavigation.animate({"width": "90vw", opacity: 1}, 350);
        mobileHamburgerMenu.hide();
    });

});

function hideMobileMenu() {
    mobileNavigation.stop();
    mobileNavigation.animate({"width": "0vw", opacity: 0}, 350);
    mobileHamburgerMenu.css('display', '');
}