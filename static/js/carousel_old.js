$('document').ready(function() {
    const carousel = document.getElementById("banner");
    const lastImageDuplicate = $("#banner").children().last().clone();
    $("#banner").prepend(lastImageDuplicate);

    const carouselImages = document.querySelectorAll("#banner img");

    let counter = 1;
    const size = carousel.clientWidth;

    carousel.style.transform = 'translateX(' + (-size * counter) + 'px)';
    
    window.setInterval(() => {
        counter++;
        carousel.style.transition = "transform 1s ease-in-out";
        carousel.style.transform = 'translateX(' + (-size * counter) + 'px)';
    }, 4000);

    carousel.addEventListener('transitionend', (event) => {
        if (carouselImages[counter] === event.target.children[event.target.children.length - 1]) {
            carousel.style.transition = "none";
            carousel.style.transform = 'translateX(' + (0) + 'px)';
            counter = 0;
        }
    });
});