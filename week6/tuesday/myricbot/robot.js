var _ = require('lodash');

var robot = {
  bestFriend: 'Ric',
  welcome: function() {
    return 'Hello ' + _.capitalize(this.bestFriend);
  }
}

module.exports = robot;