let slideIndex = 0;
let slideTimeout;

showSlides();

function showSlides() {
    const slides = document.getElementsByClassName("slides")[0].getElementsByTagName("img");

    for (let i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }

    slides[slideIndex].style.display = "block";

    slideIndex++;
    if (slideIndex >= slides.length) {
        slideIndex = 0;
    }

    slideTimeout = setTimeout(showSlides, 5000); 
}

function moveSlide(n) {
    clearTimeout(slideTimeout); 
    slideIndex += n;

    if (slideIndex >= document.getElementsByClassName("slides")[0].getElementsByTagName("img").length) {
        slideIndex = 0;
    } else if (slideIndex < 0) {
        slideIndex = document.getElementsByClassName("slides")[0].getElementsByTagName("img").length - 1;
    }

    showSlides();
}