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

$(document).ready(function() {
    var rightMenu = $('#right-content');
    var el = document.getElementById('right-content');
    if (!el) {
        return;
    }
    el.style.marginTop = "2%";
    var initialPos = rightMenu.position();
    var currentWidth = rightMenu.width();
    var windowWidth = $(window).width();
    var windowWidthDelta = 0;
    var threshold = $('#banner-wrapper').height() - $('#header-wrapper').height();
    var paddingPx = parseInt(rightMenu.css('padding').replace('px', ''));
    var marginLeftPx = parseInt(rightMenu.css('margin-left').replace('px', ''));
    var marginLeft = initialPos.left - ($('#page-content').position().left + $('#page-content').width());
    handleScroll(initialPos, currentWidth, initialPos, false);
    
    $(window).scroll(function(e) { 
        var currentPos = rightMenu.position();
        handleScroll(currentPos, initialPos, false);
    });

    $(window).resize(function() {
        windowWidthDelta = windowWidth - $(this).width();
        windowWidth = $(this).width();
        currentWidth -= (windowWidthDelta * 0.25);
        var currentPos = rightMenu.position();
        handleScroll(currentPos, initialPos, true);
    });

    function handleScroll(currentPos, initialPos, resize) {
        var scrollPos = $(window).scrollTop();

        if (scrollPos > threshold) {
            var newLeft = !resize ? (currentPos.left) : (($('#page-content').position().left + $('#page-content').width()) + marginLeft);
            rightMenu.css({width: (currentWidth - windowWidthDelta) + 'px', marginLeft: marginLeftPx + 'px', padding: paddingPx + 'px', position: 'fixed', top: 65 + 'px', left: newLeft + 'px', bottom: initialPos.bottom + 'px'});
        } else {
            rightMenu.css({width: (currentWidth - windowWidthDelta) + 'px', position: 'static'});
        }
        windowWidthDelta = 0;
    }
});