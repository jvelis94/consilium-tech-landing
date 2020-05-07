import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["recruiting.", "people intelligence.", "business intelligence.", "client relationship management."],
    typeSpeed: 25,
    loop: true,
  });
}

document.querySelector(".close").addEventListener("click", myFunction);

function myFunction() {
  document.querySelector(".alert").style.display = "none";
}


export { loadDynamicBannerText };