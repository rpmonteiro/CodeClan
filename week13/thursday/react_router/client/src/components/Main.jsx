var React = require('react');
var About = require('./About.jsx');
var Home = require('./Home.jsx');
var Pricing = require('./Pricing.jsx')

var Main = React.createClass({
  getInitialState:function(){
    return{page:null};
  },

  gotoHome:function(e){
    e.preventDefault();
    this.setState( { page: '/home'});
  },
  gotoAbout:function(e){
    e.preventDefault();
    this.setState( { page: '/about'});
  },
  gotoPricing:function(e){
    e.preventDefault();
    this.setState( { page: '/pricing'});
  },

  render: function(){
    var child
    switch (this.state.page) {
      case '/about': child = <About/>; break;
      case '/pricing': child = <Pricing/>; break;
      default:  child = <Home/>;
    }

    return(
      <div>
        <h4> Main App</h4>
        <ul>
          <li><a onClick = {this.gotoHome} href='' page="/home">Home</a></li>
          <li><a onClick = {this.gotoAbout} href='' page="/about">About</a></li>
          <li><a onClick = {this.gotoPricing} href='' page="/pricing">Pricing</a></li>
        </ul>
        {child}
      </div>
    )
  }
})

module.exports = Main;
