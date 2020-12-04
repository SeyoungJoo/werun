require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
// require("data-confirm-modal")
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { initConversationCable } from '../channels/conversation_channel';
import { initMapbox } from '../plugins/map';
import "../plugins/flatpickr"
import flatpickr from "flatpickr";
import { initFlatpickr } from '../plugins/flatpickr'
// import { initSweetalert } from '../plugins/init_sweetalert';
import { initSelect2 } from '../plugins/init_select2';


document.addEventListener('turbolinks:load', () => {
  initFlatpickr();
  initConversationCable();
  initMapbox();
  initSelect2();
  // initSweetalert('.buddy-request-button', {
  //   title: "Do you want to send a buddy request?",
  // });
});

$(".gender").select2({
  placeholder: "Select a gender"
});