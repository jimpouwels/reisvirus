let mobileNavigation;
let mobileHamburgerMenu;
let mobileNavigationCloseButton;
let mobileDestinationsButton;
let mobileDestinationsLink;

$(document).ready(function() {
    mobileNavigation = $("#mobile-navigation");
    mobileHamburgerMenu = $(".mobile-hamburger-menu");
    mobileNavigationCloseButton = $("#mobile-navigation-close-link");
    mobileDestinationsButton = $("#mobile-destinations-button");
    mobileDestinationsLink = $("#mobile-destinations-link");

    mobileNavigationCloseButton.mouseup(function() {
        hideMobileMenu();
        return false;
    });

    mobileHamburgerMenu.mouseup(function() {
        mobileNavigation.stop();
        mobileNavigation.animate({"width": "90vw", opacity: 1}, 350);
        mobileHamburgerMenu.hide();
    });

    mobileDestinationsButton.mouseup(function() {
        handleDestinationsClick();
    });

    mobileDestinationsLink.mouseup(function() {
        handleDestinationsClick();
    });
});

let destinationsButtonUp = true;
function handleDestinationsClick() {
    let destinationsList = $("#mobile-destinations-wrapper");
    destinationsList.slideToggle('fast');
    // let originalTransformValue = mobileDestinationsButton.css('transform');
    let nextTransformValue = "scaleY(-1)";
    if (!destinationsButtonUp) {
        nextTransformValue = "none";
    }
    mobileDestinationsButton.css('-webkit-transform', nextTransformValue);
    mobileDestinationsButton.css('transform', nextTransformValue);
    destinationsButtonUp = false;
}

function hideMobileMenu() {
    mobileNavigation.stop();
    mobileNavigation.animate({"width": "0vw", opacity: 0}, 350);
    mobileHamburgerMenu.css('display', '');
}