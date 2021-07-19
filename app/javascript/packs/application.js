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


window.onscroll = function () {

    if(document.documentElement.scrollTop > 50) {
      document.getElementById("navbar-unconnected").style.padding = "38px 24px";
      document.getElementById("navbar-unconnected").style.background = "white";
      document.getElementsById("maxisol-logo").style.color = "black";
      document.getElementsById("navbar-items").style.color = "black";
    }
    else {
      document.getElementById("navbar-unconnected").style.padding = "66px 36px";
      document.getElementById("navbar-unconnected").style.background = "#1A3E74";
      document.getElementsById("maxisol-logo").style.color = "white";
      document.getElementsById("navbar-items").style.color = "white";
    }

}

