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
    let rightContentElement = document.getElementById('right-content');
    if (!rightContentElement) {
        return;
    }
    let originalMargin = "30px";
    rightContentElement.style.marginTop = originalMargin;
    let threshold = $('#banner-wrapper').height() - $('#header-wrapper').height();
    let marginTop = parseInt(rightMenu.css('margin-top').replace('px', ''));
    positionRightBlock();

    $(window).scroll(function () {
        footerStartOffset = footer.offset().top;
        positionRightBlock();
        lastScrollTop = scrollAmount();
    });

    $(window).resize(function () {
        footerStartOffset = footer.offset().top;
        threshold = $('#banner-wrapper').height() - $('#header-wrapper').height();
        positionRightBlock();
    });

    function positionRightBlock() {
        let outside = ((rightMenu.offset().top + parseInt(rightMenu.height())) > footerStartOffset - 100);
        if (outside) {
            outsideAmount += (scrollAmount() - lastScrollTop);
        } else {
            outsideAmount = 0;
        }
        if (outsideAmount > 0) {
        } else if (scrollAmount() > threshold) {
            rightMenu.css({
                marginTop: marginTop + (scrollAmount() - threshold) + 'px'
            });
        } else {
            rightMenu.css({marginTop: originalMargin});
        }
    }

    function scrollAmount() {
        return $(window).scrollTop();
    }
});