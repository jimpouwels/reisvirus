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

    correctRightContentPosition();
    $(window).resize(function () {
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

// CATEGORY SELECTOR
$(document).ready(() => {
    $('.category').first().css('display', 'flex');
});

function showCategory(term) {
    $('.category').each((_, element) => {
        if ($(element).hasClass('category-selector-' + term)) {
            $(element).css('display', 'flex');
        } else {
            $(element).css('display', 'none');
        }
    });
    $('.category-button').each((_, element) => {
        if ($(element).hasClass('category-button-' + term)) {
            $(element).addClass('category-button-selected');
        } else {
            $(element).removeClass('category-button-selected');
        }
    });
}

function onScroll() {
    setCorrectTopHeight();
    handleHeaderMenuScroll();
    handleNavTop();
    correctRightContentPosition();
}

function correctRightContentPosition() {
    if (!rightContentSticker[0]) {
        return;
    }
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

function getCurrentTop() {
    if (rightContentSticker.is(':visible')) {
        return parseInt(rightContentSticker.css('top').replace('px', ''));
    }
}

function setCurrentTop(value) {
    rightContentSticker.css('top', value + 'px');
}