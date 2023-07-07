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
    var initialWidth = $('#right-content').width();
    handleScroll(initialWidth, initialPos);
    $(window).scroll(function(e) { 
        handleScroll(initialWidth, initialPos);
    });

    function handleScroll(initialWidth, initialPos) {
        var scrollPos = $(window).scrollTop();
        var currentPos = $('#right-content').position();
        if (scrollPos > 585) {
            $('#right-content').css({width: initialWidth + 'px', position: 'fixed', top: 65 + 'px', left: currentPos.left + 'px', currentPos: initialPos.bottom + 'px'});
        } else {
            $('#right-content').css({position: 'static'});
        }
    }
});