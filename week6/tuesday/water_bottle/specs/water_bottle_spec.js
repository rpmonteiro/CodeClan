var assert = require('chai').assert;
var bottle = require('../water_bottle');

describe('Water Bottle', function() {
  it('should be empty at start', function() {
    bottle.empty();
    assert.equal(0, bottle.volume);
  });

  it('should have 100 when filled', function() {
    bottle.fill();
    assert.equal(100, bottle.volume);
  });

  it('should decrease by 10 when drank', function() {
    bottle.fill();
    bottle.drink();
    assert.equal(90, bottle.volume);
  });

  it('should never go below 0', function() {
    bottle.volume = 5;
    bottle.drink();
    assert.equal(0, bottle.volume);
  });

  it('should be able to fully empty itself', function () {
    bottle.fill();
    bottle.empty();
    assert.equal(0, bottle.volume);
  });

  it('should return 5 when drinking from an almost empty bottle', function () {
    bottle.volume = 5;
    assert.equal(5, bottle.drink());
  });

  it('should return the full gulp when drinking from a full bottle', function () {
    bottle.volume = 100;
    assert.equal(10, bottle.drink());
  });

  it('should lower temperature after being in the fridge', function () {
    assert.isBelow(15, bottle.put_in_fridge(3600));
  });
});