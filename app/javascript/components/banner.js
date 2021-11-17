import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Be more swift", "submit your form!"],
    typeSpeed: 150,
    loop: true
  });
}

export { loadDynamicBannerText };