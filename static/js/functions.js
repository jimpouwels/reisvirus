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
    var lastScrollTop = 0;
    let rightMenu = $('#right-content');
    let pageContent = $('#page-content');
    let footer = $('#footer');
    let footerStartOffset = footer.offset().top;
    let outSideBottom = false;
    let el = document.getElementById('right-content');
    if (!el) {
        return;
    }
    let trackerTop = null;
    el.style.marginTop = "30px";
    let threshold = $('#banner-wrapper').height() - $('#header-wrapper').height();
    let marginTop = parseInt(rightMenu.css('margin-top').replace('px', ''));
    positionRightBlock();

    $(window).scroll(function (e) {
        positionRightBlock();
        lastScrollTop = $(window).scrollTop();
    });

    $(window).resize(function () {
        threshold = $('#banner-wrapper').height() - $('#header-wrapper').height();
        positionRightBlock();
    });

    function positionRightBlock() {
        let pageContentPercentWidth = pageContent.width() / pageContent.parent().width() * 100;
        let newWidth = (pageContent.width() / pageContentPercentWidth) * (100 - pageContentPercentWidth - 8);

        let outside = ((rightMenu.offset().top + parseInt(rightMenu.height())) > footerStartOffset);
        if ($(window).scrollTop() > threshold) {
            // if (!trackerTop) {
            //     trackerTop = threshold;
            // }
            rightMenu.css({
                width: newWidth + 'px',
                marginTop: marginTop + ($(window).scrollTop() - threshold) + 'px',
            });
        } else {
            trackerTop = null;
            rightMenu.css({width: newWidth + 'px', marginTop: '30px'});
        }
        rightMenu.css({width: newWidth + 'px'});
    }
});