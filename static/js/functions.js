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
    let lastScrollTop = 0;
    let rightMenu = $('#right-content');
    let footer = $('#footer');
    let footerStartOffset = footer.offset().top;
    let outsideAmount = 0;
    if (!rightMenu.get(0)) {
        return;
    }
    rightMenu.get(0).style.marginTop = "30px";
    let threshold = $('#banner-wrapper').height() - $('#header-wrapper').height();
    let marginTop = parseInt(rightMenu.css('margin-top').replace('px', ''));
    let originalMargin = marginTop;
    positionRightBlock(scrollAmount());

    $(window).scroll(function () {
        let scrollVal = scrollAmount();
        positionRightBlock(scrollVal);
        lastScrollTop = scrollVal;
    });

    $(window).resize(function () {
        threshold = $('#banner-wrapper').height() - $('#header-wrapper').height();
        positionRightBlock(scrollAmount());
    });

    function positionRightBlock(scrollPos) {
        footerStartOffset = footer.offset().top;
        let outside = ((rightMenu.offset().top + parseInt(rightMenu.height())) > footerStartOffset - 100);
        if (outside) {
            outsideAmount += (scrollPos - lastScrollTop);
        } else {
            outsideAmount = 0;
        }
        if (scrollPos > threshold && outsideAmount <= 0) {
            marginTop = scrollAmount() - threshold + originalMargin;
            rightMenu.css({
                marginTop: marginTop + 'px'
            });
        } else if (outsideAmount <= 0) {
            marginTop = originalMargin;
            rightMenu.css({marginTop: marginTop});
        }
    }

    function scrollAmount() {
        return parseInt($(window).scrollTop());
    }
});