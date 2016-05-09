var React  = require('react');

var Counter = React.createClass({

  getInitialState: function(){
    return {count: 0}
  },

  incrementCount: function(){
    console.log('incrementing..');
    this.setState({count: this.state.count + this.props.multiple})
  },

  decrementCount: function(){
    console.log('decrementing..');
    this.setState({count: this.state.count - this.props.multiple})
  },

  render: function(){
    return (
      <div>
        <h1> {this.props.title}</h1>
        <p> The current count is {this.state.count} </p>
        <p> Will add or take away {this.props.multiple}</p>
        <button onClick={this.incrementCount}> Increment </button>
        <button onClick={this.decrementCount}> Decrement </button>
        <input id="multiply"></input>
      </div>
      )
  }
});

module.exports = Counter;


