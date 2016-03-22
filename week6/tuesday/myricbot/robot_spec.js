var assert = require('assert');
var robot = require('./robot');

describe('Robot', function() {
  it('should welcome me', function () {
    assert.equal('Hello Ric', robot.welcome());
  });
});