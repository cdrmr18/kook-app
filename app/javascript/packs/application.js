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
// require("flatpickr/dist/themes/dark.css");
require("flatpickr/dist/themes/airbnb.css");



// Adds calendar with dates  ----------------------------------
document.addEventListener('turbolinks:load', () => {
  const startDateInput = document.getElementById('booking_start_date');
  if (startDateInput) {
    flatpickr(startDateInput, {
      altInput: true,
      altFormat: "F j, Y",
      minDate: "today",
      dateFormat: "Y-m-d",
      disableMobile: "true",
      defaultDate: "today"
    });
  };
});
// ------------------------------------------------------------------

// start and end time ------------------------------------------------
document.addEventListener('turbolinks:load', () => {
  const startTimeInput = document.getElementById('booking_start_time');
  const endTimeInput = document.getElementById('booking_end_time');
  // if (startTimeInput) {
    // const unavailableTimes = JSON.parse(document.querySelector('#recipe-booking-times').dataset.unavailable)
    // endTimeInput.disabled = true

    flatpickr(startTimeInput, {
      enableTime: true,
      noCalendar: true,
      dateFormat: "h:i K",
      disableMobile: "true"
      // disable: unavailableTimes,
    });

//     // startTimeInput.addEventListener("change", (e) => {
//       // if (startTimeInput != "") {
//       //   endTimeInput.disabled = false
//       // }
    flatpickr(endTimeInput, {
      enableTime: true,
      noCalendar: true,
      dateFormat: "h:i K",
      disableMobile: "true"
      });
//     // })
//   };
});
