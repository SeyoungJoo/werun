require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('data-confirm-modal')

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
import { initFlatpickr } from '../plugins/flatpickr'
import { initSelect2 } from '../plugins/init_select2';
import { init_popup } from '../plugins/initcard';
import { init_track_popup } from '../plugins/init_trackcard';
import { initEventModal } from '../plugins/modal';
import { mapBtn } from '../channels/map-toggle';

document.addEventListener('turbolinks:load', () => {
  initFlatpickr();
  initConversationCable();
  initMapbox();
  initSelect2();
  init_popup();
  init_track_popup();
  initEventModal();
  mapBtn();
  var clipboard = new ClipboardJS('.btn');

  clipboard.on('success', function(e) {
    console.info('Action:', e.action);
    console.info('Text:', e.text);
    console.info('Trigger:', e.trigger)
    e.trigger.innerHTML = 'Copied';

    e.clearSelection();
  });

  clipboard.on('error', function(e) {
    console.error('Action:', e.action);
    console.error('Trigger:', e.trigger);
});
});

