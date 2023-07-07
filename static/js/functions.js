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
    var el = document.getElementById('right-content');
    el.style.marginTop = "20px";
    var initialPos = $('#right-content').position();
    var currentWidth = $('#right-content').width();
    var initialWidth = $('#right-content').width() + 20;
    console.log('test ' + initialWidth);
    var windowWidth = $(window).width();
    var windowWidthDelta = 0;
    var paddingPx = parseInt($('#right-content').css('padding').replace('px', ''));
    var paddingLeftPx = parseInt($('#right-content').css('padding-left').replace('px', ''));

    var marginPx = parseInt($('#right-content').css('margin').replace('px', ''));
    var marginLeftPx = parseInt($('#right-content').css('margin-left').replace('px', ''));
    console.log('padding: ' + paddingPx);
    console.log('padding-left: ' + paddingLeftPx);
    console.log('margin: ' + marginPx);
    console.log('margin-left: ' + marginLeftPx);
    // var marginPx = parseInt($('#right-content').css('margin-left').replace('px', ''));
    var marginLeft = initialPos.left - ($('#page-content').position().left + $('#page-content').width());
    handleScroll(initialPos, currentWidth, initialPos, false);
    
    $(window).scroll(function(e) { 
        var currentPos = $('#right-content').position();
        handleScroll(currentPos, initialPos, false);
    });

    $(window).resize(function() {
        windowWidthDelta = windowWidth - $(this).width();
        windowWidth = $(this).width();
        currentWidth -= (windowWidthDelta * 0.25);
        var currentPos = $('#right-content').position();
        handleScroll(currentPos, initialPos, true);
    });

    function handleScroll(currentPos, initialPos, resize) {
        var scrollPos = $(window).scrollTop();
        if (scrollPos > 585) {
            var newLeft = !resize ? (currentPos.left) : (($('#page-content').position().left + $('#page-content').width()) + marginLeft);
            $('#right-content').css({width: (currentWidth - windowWidthDelta) + 'px', marginLeft: marginLeftPx + 'px', padding: paddingPx + 'px', position: 'fixed', top: 65 + 'px', left: newLeft + 'px', bottom: initialPos.bottom + 'px'});
        } else {
            $('#right-content').css({position: 'static'});
        }
        windowWidthDelta = 0;
    }
});