var waterBottle = {
  temperature: 293.15, //20 degrees Celsius
  gulp: 10,
  volume: 0,
  fill: function () {
    this.volume = 100;
  },
  empty: function () {
    this.volume = 0;
  },
  drink: function () {
    if (this.volume < this.gulp) {
      current_volume = this.volume;
      this.volume = 0;
      return current_volume;
    } else {
      this.volume -= this.gulp;
      return this.gulp;
    }
  },
  put_in_fridge: function(duration) {
    var fridge_temperature = 276.15; //3 degrees celsius
    // T(t) = Ts + (T0 - Ts ) e(-kt)
    var exponential = Math.exp(-0.17 * duration);
    result = fridge_temperature + (this.temperature - fridge_temperature) * exponential;
    console.log(result);
    this.temperature = result;
    return this.temperature;
  }
};

waterBottle.put_in_fridge(20000);
module.exports = waterBottle;