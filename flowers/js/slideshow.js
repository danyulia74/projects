let img = {
    src: "287562-Cute-Kitties.jpg",
    title: "Cute Kitten"
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

slides.push(new Slide("background1.jpg", "background"));
slides.push(new Slide("background2.jpg", "background"));
slides.push(new Slide("background3.png", "background"));
slides.push(new Slide("background4.jpg", "background"));



window.onload = () => {

    elSS = document.querySelector("#slideshow");
    //elOverlay = document.querySelector("#overlay");

    elSS.addEventListener("mouseover", () => {
        clearInterval(intervalHandle);
        //elOverlay.style.opacity = "1"; // shows button

    });

    elSS.addEventListener("mouseout", () => {
        intervalHandle = setInterval(showNexSlide, 3100) //stop sliding
        //elOverlay.style.opacity = "0"; // doesnot show buttons
    });

    document.querySelector("#next").addEventListener("click", showNexSlide);
    document.querySelector("#prev").addEventListener("click", showPrevSlide);



    slides.forEach((el) => {
        let elTmp = document.createElement("div");
        elTmp.style.backgroundImage = "url('img/" + el.src + "')";
        elTmp.className = "slide";

        // elSS.appendChild(elTmp);
        let elCap = document.createElement("h1");
        elCap.innerText = el.title;
        elCap.style.backgroundColor = "rgba(255, 0, 0, 0.2)";


        elTmp.appendChild(elCap);


        elSS.appendChild(elTmp);
        //elTmp.innerHTML = el.title; // name of picture
        el.element = elTmp;
    });



    intervalHandle = setInterval(
        showNexSlide, 5100)

    setVisible(0);


    var el = document.getElementsByClassName('menu-item');
    for(var i=0; i<el.length; i++) {
        el[i].addEventListener("mouseenter", showSub, false);
        el[i].addEventListener("mouseleave", hideSub, false);
     }


}
function showSub(e) {
    if(this.children.length>1) {
       this.children[1].style.height = "auto";
       this.children[1].style.overflow = "visible";
       this.children[1].style.opacity = "1";
    } else {
       return false;
    }
}

function hideSub(e) {
    if(this.children.length>1) {
      this.children[1].style.height = "0px";
       this.children[1].style.overflow = "hidden";
       this.children[1].style.opacity = "0";
    } else {
       return false;
    }
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

    //currSlide = currSlide === 0 ? slides.length - 1 : (currSlide - 1); //perv button
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