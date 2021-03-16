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







// TYPEWRITER EFFECT  ------------------------------------------------

var TxtType = function(el, toRotate, period) {
  this.toRotate = toRotate;
  this.el = el;
  this.loopNum = 0;
  this.period = parseInt(period, 10) || 2000;
  this.txt = '';
  this.tick();
  this.isDeleting = false;
};

TxtType.prototype.tick = function() {
  var i = this.loopNum % this.toRotate.length;
  var fullTxt = this.toRotate[i];

  if (this.isDeleting) {
  this.txt = fullTxt.substring(0, this.txt.length - 1);
  } else {
  this.txt = fullTxt.substring(0, this.txt.length + 1);
  }

  this.el.innerHTML = '<span class="wrap">'+this.txt+'</span>';

  var that = this;
  var delta = 200 - Math.random() * 100;

  if (this.isDeleting) { delta /= 2; }

  if (!this.isDeleting && this.txt === fullTxt) {
  delta = this.period;
  this.isDeleting = true;
  } else if (this.isDeleting && this.txt === '') {
  this.isDeleting = false;
  this.loopNum++;
  delta = 500;
  }

  setTimeout(function() {
  that.tick();
  }, delta);
};

window.onload = function() {
  var elements = document.getElementsByClassName('typewrite');
  for (var i=0; i<elements.length; i++) {
      var toRotate = elements[i].getAttribute('data-type');
      var period = elements[i].getAttribute('data-period');
      if (toRotate) {
        new TxtType(elements[i], JSON.parse(toRotate), period);
      }
  }
  // INJECT CSS
  var css = document.createElement("style");
  css.type = "text/css";
  css.innerHTML = ".typewrite > .wrap { border-right: 0.08em solid #fff}";
  document.body.appendChild(css);
};

// TYPEWRITER EFFECT END------------------------------------------------
