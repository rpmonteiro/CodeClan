var waterBottle = require('./water_bottle/water_bottle.js');
var _ = require('lodash');

window.onload = function() {
  displayVolume();

  var refillButton = document.getElementById('refill');

  refillButton.onclick = function() {
    waterBottle.fill();
    displayVolume();
  }

  var drinkButton = document.getElementById('drink');
  drinkButton.onclick = function() {
    waterBottle.drink();
    displayVolume();
  }

}

function displayVolume() {
  var volumeDisplay = document.getElementById('volume');
  volumeDisplay.innerText = waterBottle.volume;
}