require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

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
import "../plugins/flatpickr"
import flatpickr from "flatpickr";

document.addEventListener('turbolinks:load', () => {
  flatpickr('.datepicker', {
    enableTime: true,
    dateFormat: "Y-m-d H:i"
  });
  initConversationCable();
});

//geocoding
import { initMapbox } from '../plugins/map';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
})
