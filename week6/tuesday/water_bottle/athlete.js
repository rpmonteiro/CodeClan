var bottle = require('./water_bottle');

var athlete = {
  hydration: 100,
  distanceCovered: 0,
  run: function(distance){
    if (this.hydration <= distance) {
       return false;
     } else {
    this.distanceCovered += distance;
    this.hydration -= distance;
    }
  },
  drink: function() {
    var gulp = bottle.drink();
    if (this.hydration + gulp >= 100) {
      this.hydration = 100;
    } else {
      this.hydration += gulp;
    }
  }
};

module.exports = athlete;