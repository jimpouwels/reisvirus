let previousScroll = 0;
let previousScrollDelta = 0;
let scrollDelta = 0;
let isScrollingUp = false;
let isScrollingDown = false;
let scrollPosition = 0;
let originalTop = 0;
let headerWrapper2;
let rightContentSticker;

$(document).ready(function () {
    handleNavTop();
    rightContentSticker = $('#right-content-sticker');
    originalTop = getCurrentTop();
    headerWrapper2 = $('#header-wrapper-2');

    setCorrectRightContentHeight();
    correctRightContentPosition();
    $(window).resize(function () {
        setCorrectRightContentHeight();
        correctRightContentPosition();
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
    if (!$('#header-wrapper-2 .header-menu').is(":visible")) {
        if (scrollPosition > ($(window).height() / 3)) {
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

function onScroll() {
    handleHeaderMenuScroll();
    handleNavTop();
    setCorrectRightContentHeight();
    correctRightContentPosition();
}

function correctRightContentPosition() {
    let differenceBetweenScreenHeightAndRightContentHeight = rightContentSticker.height() - window.innerHeight + originalTop;

    if (rightContentSticker[0].getBoundingClientRect().bottom > (window.innerHeight - originalTop) || (isScrollingDown && getCurrentTop() > originalTop)) {
        setCurrentTop(Math.max(Math.min(-differenceBetweenScreenHeightAndRightContentHeight, originalTop), Math.min(getCurrentTop() - scrollDelta, originalTop + headerWrapper2.height())));
    } else if (isScrollingUp) {
        setCurrentTop(Math.min(getCurrentTop() - scrollDelta, originalTop + headerWrapper2.height()));
    }
}

function handleHeaderMenuScroll() {
    if (scrollPosition === 0) {
        headerWrapper2.hide()
    } else if (scrollPosition < ($("#header-wrapper-1").height() + 100)) {
        headerWrapper2.hide();
    } else if (isScrollingUp) {
        headerWrapper2.show();
    } else {
        headerWrapper2.hide();
    }
}

function setCorrectRightContentHeight() {
    let rightContent = $('#right-content');
    let pageContent = $('.page-content');
    let pageHeight = pageContent.height();
    rightContent.css('height', pageHeight + 'px');
}

function getCurrentTop() {
    if (rightContentSticker.is(':visible')) {
        return parseInt(rightContentSticker.css('top').replace('px', ''));
    }
}

function setCurrentTop(value) {
    rightContentSticker.css('top', value + 'px');
}