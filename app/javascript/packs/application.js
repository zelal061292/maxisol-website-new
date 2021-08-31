// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});

const nav = document.querySelector('.navbar');
const navitem = document.querySelector('.nav-item');
const navlogo = document.querySelector('.navbar-brand');

window.addEventListener('scroll', () => {
  if(window.scrollY > 20) {
    nav.classList.add('scroll');
    navitem.classList.remove('scroll');
    navlogo.classList.add('scroll')
  }
  else{
    nav.classList.remove('scroll');
    navitem.classList.add('scroll');
  }
});

// var colorLogoPath = "#{asset_path('LOGOFINAL MAXISOL.png')}";
// var whiteLogoPath = "#{asset_path('LOGOfinalBlanc.png')}";

// window.scroll(function () {
//   if ($(document).scrollTop() > 20) {
//     colorLogoPath();
//   }
//   else {
//     whiteLogoPath();
//   }
// });

