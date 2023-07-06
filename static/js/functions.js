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
    var initialPosY = $("#right-content").position().top;
    handleScroll(initialPosY);
    $(window).scroll(function(e) { 
        handleScroll(initialPosY);
    });

    function handleScroll(initialPosY) {
        var scrollPos = $(window).scrollTop();
        var currentPosY = $("#right-content").position().top;
        if ((scrollPos + 85) > currentPosY) {
            el.style.marginTop = Math.max(20, (scrollPos + 85 - initialPosY)) + 'px';
        }
    }
});