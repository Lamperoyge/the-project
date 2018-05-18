var contactPage = document.querySelector(".contact-info");


function contactAppear () {
  contactPage.style.opacity = "1";
}


setTimeout(contactAppear, 500);
// function colorChange () {
//   for (let i = 0; i < 9; i++) {
//     let randomNumber = Math.floor(Math.random() * 10);
//     contactPage.style.background = `linear-gradient(to right, #${randomNumber}b${randomNumber}cb${randomNumber}, #1${randomNumber}2${i + 1}${randomNumber}${randomNumber})`;
//     console.log(contactPage.style.background);
//     console.log(randomNumber);
//   };
// }


//   setTimeout(colorChange, 5000);

