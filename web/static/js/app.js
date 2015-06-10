import {Socket} from "phoenix"

let App = {
}

export default App

if (navigator.geolocation) {
  console.log("supported");
} else {
  alert("not supported");
}

function success(position) {
  console.log(position.coords.latitude);
  console.log(position.coords.longitude);
  postLocation(position.coords.latitude, position.coords.longitude);
}

function error(error) {
  alert(error.code);
}

var opts = {
  "enableHighAccuracy": false,
  "timeout": 10000,
  "maximumAge": 5000
}

function postLocation(lat, lon) {
  $.get("/location",
    {
      "latitude": lat,
      "longitude": lon
    }
  );
}

$('.js-post-location-sea').click(function() {
  var $button = $('.js-post-location-sea');
  postLocation($button.data("lat"), $button.data("lon"));
});
$('.js-post-location-tokyo').click(function() {
  var $button = $('.js-post-location-tokyo');
  postLocation($button.data("lat"), $button.data("lon"));
});

//navigator.geolocation.getCurrentPosition(success, error, opts);

// var socket = new Socket("/ws");
// socket.connect();
// var chan = socket.chan("location:join", {});
// chan.join("location:join", {}).receive("ok", msg => {
//   console.log("OK")
//   // notify location
//   chan.on("msg", ({msg}) => {
//     console.log("receive", msg);
//   });
// })
// 
// chan.push("msg:new", {body: "hoho"})

