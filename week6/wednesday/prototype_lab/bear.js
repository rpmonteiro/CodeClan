function Bear(name, age, weight) {
  this.name = name;
  this.age = age;
  this.weight = weight;
}

Bear.prototype.roar = function() {
  return 'ROAR!';
};

Bear.prototype.eat = function() {
  this.name += 10;
  return 'ONOMNOM';
};

module.exports = Bear;