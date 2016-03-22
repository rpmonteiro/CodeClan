var mighty_bear = {
  name: 'Ric The Bear',
  roar: function () {
    console.log('ROARRRRRR! Hello :)');
  }
}

function Bear(name, age) {
  this.name = name;
  this.age = age;
}

Bear.prototype.roar = function() {
  console.log('MIAU!');
};

var ric = new Bear('Ric', 23);
console.log(ric.name);
console.log(ric.roar());