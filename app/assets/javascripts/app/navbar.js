const myNav = document.querySelector(".navbar-wagon");
window.onscroll = function () {
  "use strict";
  if (document.body.scrollTop >= 900) {
    myNav.classList.add("nav-colored");
    myNav.classList.remove("nav-not");
  }
  else {
    myNav.classList.add("nav-not");
    myNav.classList.remove("nav-colored");
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
