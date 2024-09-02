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

let headerLastScrollTop = $(window).scrollTop();

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
    handleNavTop();
    $(window).scroll(function (event) {
        handleNavTop();
    });

    $("#nav-top").mouseup(function() {
        window.scrollTo({top: 0, behavior: 'smooth'});
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

$(document).ready(function() {
    $(window).scroll(function (event) {
        if (!$('#banner-wrapper').is(':visible')) {
            return;
        }
        let st = $(window).scrollTop();
        if (st === 0) {
            $("#header-wrapper-2").hide()
        } else if (st < ($("#header-wrapper-1").height() + 100)) {
            $("#header-wrapper-2").hide();
        } else if (st < headerLastScrollTop) {
            $("#header-wrapper-2").show();
        } else {
            $("#header-wrapper-2").hide();
        }
        headerLastScrollTop = st;
    });
});

// HEADER MENU UNDERLINE EFFECT
$(document).ready(function () {
    $("#nav").linkUnderlineAnim({
        "speed": 300, "color": "#ffffff", "thickness": 1, "distance": 2, "skipClass": "selected"
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

// RIGHT BLOCK SCROLLING BEHAVIOR
$(document).ready(function () {
    var rightMenu = $('#right-content');
    var pageContent = $('#page-content');
    var el = document.getElementById('right-content');
    if (!el) {
        return;
    }
    var marginTopInit = 30;
    el.style.marginTop = marginTopInit + "px";
    let footer = $('#footer');

    let footerStartOffset = footer.offset().top;
    let lastScrollTop = 0;
    let outsideAmount = 0;

    let initialPos = rightMenu.position();
    let threshold = $('#top-wrapper').height();
    let paddingPx = rightMenu.css('padding');
    let marginLeftPx = rightMenu.css('margin-left');
    let marginLeft = initialPos.left - (pageContent.position().left + pageContent.width());
    let marginTop = parseInt(rightMenu.css('margin-top').replace('px', ''));
    let originalMargin = marginTop;
    let fakeOffset = parseInt(rightMenu.offset().top) + parseInt(rightMenu.height());
    let initialOffset = fakeOffset;

    positionRightBlock(initialPos, initialPos, false, scrollAmount());

    $(window).scroll(function (e) {
        positionRightBlock(rightMenu.position(), initialPos, false, scrollAmount());
        lastScrollTop = scrollAmount();
    });

    $(window).resize(function () {
        threshold = $('#top-wrapper').height();
        fakeOffset = parseInt(rightMenu.offset().top) + parseInt(rightMenu.height());
        initialOffset = fakeOffset;
        positionRightBlock(rightMenu.position(), initialPos, true, scrollAmount());
    });

    function positionRightBlock(currentPos, initialPos, resize, scrollVal) {
        footerStartOffset = footer.offset().top;

        const pageContentPercentWidth = pageContent.width() / pageContent.parent().width() * 100;
        const newWidth = (pageContent.width() / pageContentPercentWidth) * (100 - pageContentPercentWidth - 8);

        let outside = fakeOffset > footerStartOffset - 100;
        if (outside) {
            outsideAmount += (scrollVal - lastScrollTop);
        } else {
            outsideAmount = 0;
        }

        if (scrollVal > threshold && outsideAmount <= 0) {
            let prevMargin = marginTop;
            marginTop = scrollAmount() - threshold + parseInt(originalMargin);

            const newLeft = !resize ? (currentPos.left) : ((pageContent.position().left + pageContent.width()) + marginLeft);
            rightMenu.css({
                width: newWidth + 'px',
                marginLeft: marginLeftPx,
                padding: paddingPx,
                position: 'fixed',
                top: $("#header-wrapper-2").is(':visible') ? ($('#header-wrapper-1').height()) : 0 + "px",
                left: newLeft + 'px',
                bottom: initialPos.bottom + 'px',
                marginTop: "30px"
            });
            fakeOffset += (parseInt(marginTop) - parseInt(prevMargin));
        } else if (outsideAmount <= 0) {
            marginTop = parseInt(originalMargin);
            rightMenu.css({width: newWidth + 'px', position: 'static'});
            fakeOffset = initialOffset;
        } else {
            rightMenu.css({marginTop: marginTop + "px", width: newWidth + 'px', position: 'static'});
        }
    }

    function scrollAmount() {
        return parseInt($(window).scrollTop());
    }

});