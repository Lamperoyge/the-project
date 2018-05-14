const myNav = document.querySelector(".navbar-wagon");
const myBody = document.querySelector("body");
window.onscroll = function () {
  "use strict";
  if ((myNav.offsetTop - myBody.scrollTop) >= 900) {
    myNav.style.backgroundColor = "black";
    // myNav.classList.remove("nav-not");
  }
  else {
    // myNav.classList.add("nav-not");
    // myNav.classList.remove("nav-colored");
    myNav.style.backgroundColor = "white";
  }
};


const nav = document.querySelector(".navbar-wagon");
const navTop = nav.offsetTop;

window.addEventListener('scroll', stickyNavigation);

function stickyNavigation () {
  if (window.scrollY >= navTop) {
    document.body.classList.add('fixed-nav');
  }
  else {
    document.body.classList.remove('fixed-nav');
  }

  // console.log('navTop = ' + navTop);
  // console.log('scrollY =' + window.scrollY);
};
