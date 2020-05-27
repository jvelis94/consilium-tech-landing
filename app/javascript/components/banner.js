import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["recruiting.", "people intelligence.", "business intelligence.", "client relationships."],
    typeSpeed: 40,
    loop: true,
  });
}

if (document.querySelector(".close")) {
  document.querySelector(".close").addEventListener("click", myFunction);
} 

function myFunction() {
  document.querySelector(".alert").style.display = "none";
}


export { loadDynamicBannerText };