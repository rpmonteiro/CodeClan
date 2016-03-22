var assert = require('chai').assert;
var athlete = require('../athlete');
var bottle = require('../water_bottle');

describe('athlete', function() {
  it('should have hydration that starts at 100', function () {
    assert.equal(100, athlete.hydration);
  });

  it('should have its distance covered start at 0', function () {
    assert.equal(0, athlete.distanceCovered);
  });

  it('should run 10 units', function () {
    athlete.run(10);
    assert.equal(10, athlete.distanceCovered);
  });

  it('should dehydrate 10 units when running', function () {
    athlete.hydration = 100;
    athlete.run(10);
    assert.equal(90, athlete.hydration);
  });

  it('should not be able to run when hydration is at 0', function () {
    athlete.hydration = 9;
    assert.equal(false, athlete.run(10));
  });

  it('should increase hydration when drink from water bottle with at least 10 volume', function () {
    bottle.fill();
    athlete.hydration = 50;
    athlete.drink();
    assert.equal(60, athlete.hydration);
  });

  it('should increase hydration by 5 when bottle volume is 5', function () {
    bottle.volume = 5;
    athlete.hydration = 10;
    athlete.drink();
    assert.equal(15, athlete.hydration);
  });
});