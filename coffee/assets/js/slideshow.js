let img = {
    src: "287562-Cute-Kitties.jpg",
    title: "Cakes"
}

let elSS;
let currSlide = 0;
let intervalHandle;
let olOverlay;




function Slide(filename, title) {
    this.src = filename;
    this.title = title;

}

let slides = [];

slides.push(new Slide("1.jpg", "Gallery"));
slides.push(new Slide("2.jpeg", " Cake1"));
slides.push(new Slide("3.jpg", "Cake1"));
slides.push(new Slide("4.jpg", "Cake1"));
slides.push(new Slide("5.jpg", "Cake1"));



window.onload = () => {

    elSS = document.querySelector("#slideshow");

    elSS.addEventListener("mouseover", () => {
        clearInterval(intervalHandle);

    });

    elSS.addEventListener("mouseout", () => {
        intervalHandle = setInterval(showNexSlide, 3100) 
    });

    document.querySelector("#next").addEventListener("click", showNexSlide);
    document.querySelector("#prev").addEventListener("click", showPrevSlide);

    slides.forEach((el) => {
        let elTmp = document.createElement("div");
        elTmp.style.backgroundImage = "url('../Images/" + el.src + "')";
        elTmp.className = "slide";
        elSS.appendChild(elTmp);
        el.element = elTmp;
    });



    intervalHandle = setInterval(
        showNexSlide, 2100)
    setVisible(0);
}


let showNexSlide = function () {
    currSlide = (currSlide + 1) % slides.length; // next button
    setVisible(currSlide);
}
let showPrevSlide = function () { //prev button
    if (currSlide === 0) {
        currSlide = slides.length - 1;
    } else {
        currSlide -= 1;
    }
    setVisible(currSlide);
}

let setVisible = function (index) {
    slides.forEach((el, i) => {
        if (i === index) {
            el.element.style.opacity = '1';
        } else {
            el.element.style.opacity = '0';
        }
    });
}