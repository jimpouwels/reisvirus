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
$(document).ready(function() {
    $("#nav").linkUnderlineAnim({
        "speed": 300,
        "color": "#ffffff",
        "thickness": 1,
        "distance": 2,
        "skipClass": "selected"
    });
});

// TABLE OF CONTENTS
$(document).ready(function() {
    $('.table-of-contents a').each(function() {
        $(this).on('click', function() {
            scrollTo($(this).attr('href'));
            return false;
        });
    });
    
    function scrollTo(hash) {
        document.getElementById(hash.replace('#', '')).scrollIntoView({ behavior: 'smooth' });
    }
});

// RIGHT BLOCK SCROLLING BEHAVIOR
$(document).ready(function() {
    var rightMenu = $('#right-content');
    var pageContent = $('#page-content');
    var el = document.getElementById('right-content');
    if (!el) {
        return;
    }
    el.style.marginTop = "30px";
    var initialPos = rightMenu.position();
    var threshold = $('#banner-wrapper').height() - $('#header-wrapper').height();
    var paddingPx = rightMenu.css('padding');
    var marginLeftPx = rightMenu.css('margin-left');
    var marginLeft = initialPos.left - (pageContent.position().left + pageContent.width());
    positionRightBlock(initialPos, initialPos, false);
    
    $(window).scroll(function(e) { 
        positionRightBlock(rightMenu.position(), initialPos, false);
    });

    $(window).resize(function() {
        positionRightBlock(rightMenu.position(), initialPos, true);
    });

    function positionRightBlock(currentPos, initialPos, resize) {
        var pageContentPercentWidth = pageContent.width() / pageContent.parent().width() * 100;
        var newWidth = (pageContent.width() / pageContentPercentWidth) * (100 - pageContentPercentWidth - 8);
        if ($(window).scrollTop() > threshold) {
            var newLeft = !resize ? (currentPos.left) : ((pageContent.position().left + pageContent.width()) + marginLeft);
            rightMenu.css({width: newWidth + 'px', marginLeft: marginLeftPx, padding: paddingPx, position: 'fixed', top: $('#header-wrapper').height() + "px", left: newLeft + 'px', bottom: initialPos.bottom + 'px'});
        } else {
            rightMenu.css({width: newWidth + 'px', position: 'static'});
        }
    }
});
