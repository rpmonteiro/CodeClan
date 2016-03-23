var Planet = require('../planet');
var PlanetSystem = require('../planet_system');
var assert = require('chai').assert;
var planetEarth = new Planet('Earth');
var solarSystem = new PlanetSystem('SolarSystem');

describe('Planet', function() {
  it('should have a name', function() {
    assert.equal('Earth', planetEarth.name);
  });
});

describe('SolarSystem', function() {
  it('should have an empty array of planets at start', function() {
    assert.equal(undefined, solarSystem.planets);
  });
});