var React = require('react');
var About = require('./About.jsx');
var Home = require('./Home.jsx');
var Pricing = require('./Pricing.jsx');

var Link = require('react-router').Link;

var Main = React.createClass({

  render: function(){

    return (
      <div>
        <h4> Main App</h4>
        <ul>
          <li><Link to="/home">Home</Link></li>
          <li><Link to="/about">About</Link></li>
          <li><Link to="/pricing">Pricing</Link></li>
        </ul>
        {this.props.children}
      </div>
    )
  }
})

module.exports = Main;
