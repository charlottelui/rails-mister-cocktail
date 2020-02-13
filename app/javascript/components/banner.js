import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Enjoy your life, and let's PARTY!"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
