// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

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
require("flatpickr")
// External imports
import "bootstrap";
require("flatpickr/dist/flatpickr.css")


// Adds calendar with dates  ----------------------------------
document.addEventListener('turbolinks:load', () => {
  const startDateInput = document.getElementById('booking_start_date');
  if (startDateInput) {
    flatpickr(startDateInput, {
      altInput: true,
      altFormat: "F j, Y",
      minDate: "today",
      dateFormat: "Y-m-d",
    });
  };
});
// ------------------------------------------------------------------

// start and end time
document.addEventListener('turbolinks:load', () => {
  const startDateInput = document.getElementById('booking_start_date');
  // const endDateInput = document.getElementById('booking_end_date');
  if (startDateInput) {
    // const unavailableDates = JSON.parse(document.querySelector('#recipe-booking-dates').dataset.unavailable)
    // endDateInput.disabled = true

    flatpickr(startDateInput, {
      altInput: true,
      altFormat: "F j, Y",
      minDate: "today",
      // disable: unavailableDates,
      dateFormat: "Y-m-d",
    });

    // startDateInput.addEventListener("change", (e) => {
    //   if (startDateInput != "") {
    //     endDateInput.disabled = false
    //   }
    // flatpickr(endDateInput, {
    //   altInput: true,
    //   altFormat: "F j, Y",
    //   minDate: e.target.value,
    //   disable: unavailableDates,
    //   dateFormat: "Y-m-d"
    //   });
    // })
  };
});
