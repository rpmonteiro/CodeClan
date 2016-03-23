var Bear = require('../bear');
var assert = require('chai').assert;
var polibear = new Bear('polibear', 7, 400);

describe('Bear', function() {
 it('should have a name', function () {
  assert.equal('polibear', polibear.name);
 });

 it('should have an age', function () {
  assert.equal('7', polibear.age);
 });

 it('should roar', function () {
  assert.equal('ROAR!', polibear.roar());
 });

 it('should eat', function () {
  assert.equal('ONOMNOM', polibear.eat());
 });
});
