const nav = document.querySelector(".navbar-wagon");
const navTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;

window.addEventListener('scroll', stickyNavigation);

function stickyNavigation () {
  if (window.scrollY >= navTop) {
    document.body.classList.add('fixed-nav');
  }
  else {
    document.body.classList.remove('fixed-nav');
  }

  console.log(`navTop = ${navTop}`);
  console.log(`scrollY = ${window.scrollY}`);
};


const myNav = document.querySelector(".login-red");
const myBody = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop || 0;
window.onscroll = function () {
  "use strict";
  if (window.scrollY  >= 100) {
    myNav.classList.add("nav-h1");
    myNav.classList.remove("nav-not-h1");
  }
  else {
    myNav.classList.add("nav-not-h1");
    myNav.classList.remove("nav-h1");
    myNav.style.backgroundColor = "white";
  }
};


