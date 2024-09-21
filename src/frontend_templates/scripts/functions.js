let previousScroll = 0;
let previousScrollDelta = 0;
let scrollDelta = 0;
let isScrollingUp = false;
let isScrollingDown = false;
let scrollPosition = 0;

// RESPONDING TO ARTICLE COMMENTS
function respondToComment(comment_id, name) {
    $('#parent_id_field').attr('value', comment_id);
    $('#respond-to-name').html('Reageer op ' + name);
    $('#respond-to-container').show();
}

function stopResponding() {
    $('#parent_id_field').attr('value', "");
    $('#respond-to-container').hide();
    $('#respond-to-name').html('');
}

$(document).ready(function() {
    var mobileNav = $('#mobile-navigation');
    $(document).mouseup(function(e) {
        var width = parseInt(mobileNav.css('width').replace('px', ''));
        if (width > 1) {
            if (!mobileNav.is(e.target) && mobileNav.has(e.target).length === 0) {
                hideMobileMenu();
            }
        }
    });
});

$(document).ready(function() {
    if (!$('#banner-wrapper').is(':visible')) {
        return;
    }
    setCorrectTopHeight();
    $(window).resize(function (event) {
        setCorrectTopHeight();
    });
});

function setCorrectTopHeight() {
    $('#top-wrapper').css('height', $(window).height());
    $('#top-wrapper').css('min-height', "-webkit-fill-available");

    $('.jarallax-img').css('height', $(window).height());
    $('.jarallax-img').css('min-height', "-webkit-fill-available");

    $('#banner').css('height', $(window).height());
    $('#banner').css('min-height', "-webkit-fill-available");

    $('#banner-wrapper').css('height', $(window).height());
    $('#banner-wrapper').css('min-height', "-webkit-fill-available");

    $('.jarallax').css('height', $(window).height());
    $('.jarallax').css('min-height', "-webkit-fill-available");
}

$(document).ready(function() {
    $("#nav-top").mouseup(function() {
        window.scrollTo({ top: 0, behavior: 'smooth' } );
    });
});

function handleNavTop() {
    if (!$('#right-content').is(":visible")) {
        if ($(window).scrollTop() > ($(window).height() / 3)) {
            $("#nav-top").show();
        } else {
            $("#nav-top").hide();
        }
    }
}

// HEADER MENU UNDERLINE EFFECT
$(document).ready(function () {
    var color = '#000000';
    if ($('#banner-wrapper').is(':visible')) {
        color = "#ffffff";
    }
    $("#nav-1").linkUnderlineAnim({
        "speed": 300, "color": color, "thickness": 1, "distance": 2, "skipClass": "selected"
    });
    $("#nav-2").linkUnderlineAnim({
        "speed": 300, "color": '#000000', "thickness": 1, "distance": 2, "skipClass": "selected"
    });
});

// TABLE OF CONTENTS
$(document).ready(function () {
    $('.table-of-contents a').each(function () {
        $(this).on('click', function () {
            scrollTo($(this).attr('href'));
            return false;
        });
    });

    function scrollTo(hash) {
        document.getElementById(hash.replace('#', '')).scrollIntoView({behavior: 'smooth'});
    }
});

let originalTop = 0;
let headerWrapper2;
let rightContent;
let rightContentSticker;
let pageContent;
let topWrapper;
let currentTop;
$(document).ready(function () {
    handleNavTop();
    rightContentSticker = $('#right-content-sticker');
    originalTop = getCurrentTop();
    currentTop = getCurrentTop();
    headerWrapper2 = $('#header-wrapper-2');
    rightContent = $('#right-content');
    pageContent = $('.page-content');
    topWrapper = $('#top-wrapper');

    setCorrectRightContentHeight();
    $(window).resize(function () {
        setCorrectRightContentHeight();
    });
    $(window).scroll(function () {
        scrollPosition = $(window).scrollTop();
        scrollDelta = scrollPosition - previousScroll;
        previousScroll = scrollPosition;
        isScrollingUp = scrollDelta < 0;
        isScrollingDown = scrollDelta > 0;
        onScroll();
        previousScrollDelta = scrollDelta;
    });
});

function onScroll() {
    handleHeaderMenuScroll();
    handleNavTop();
    setCorrectRightContentHeight();
    correctRightContentPosition();
}

function correctRightContentPosition() {
    let scrollSpace = rightContentSticker.height() - window.innerHeight + originalTop;

    if (previousScrollDelta < 0 && scrollDelta > 0) {
        setCurrentTop(getCurrentTop() - headerWrapper2.height());
    }

    if (Math.abs(getCurrentTop()) < scrollSpace) {
        setCurrentTop(Math.max(-scrollSpace, Math.min(getCurrentTop() - scrollDelta, originalTop + headerWrapper2.height())));
    } else if (isScrollingUp) {
        setCurrentTop(Math.min(getCurrentTop() - scrollDelta, originalTop + headerWrapper2.height()));
    } else if (isScrollingDown) {
        setCurrentTop(originalTop);
    }
}

function handleHeaderMenuScroll() {
    if (scrollPosition === 0) {
        $("#header-wrapper-2").hide()
    } else if (scrollPosition < ($("#header-wrapper-1").height() + 100)) {
        $("#header-wrapper-2").hide();
    } else if (isScrollingUp) {
        $("#header-wrapper-2").show();
    } else {
        $("#header-wrapper-2").hide();
    }
}

function setCorrectRightContentHeight() {
    let pageHeight = pageContent.height();
    rightContent.css('height', pageHeight + 'px');
}

function getCurrentTop() {
    return parseInt(rightContentSticker.css('top').replace('px', ''));
}

function setCurrentTop(value) {
    rightContentSticker.css('top', value + 'px');
}