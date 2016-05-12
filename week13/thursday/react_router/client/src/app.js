var React = require('react');
var ReactDOM = require('react-dom');
var Main = require('./components/Main.jsx');

var About = require('./components/About');
var Home = require('./components/Home');
var Pricing = require('./components/Pricing');

var Router = require('react-router').Router;
var Route = require('react-router').Route;
var IndexRoute = require('react-router').IndexRoute;
var hashHistory = require('react-router').hashHistory;

window.onload = function(){
  ReactDOM.render(
    <Router history={hashHistory}>
      <Route path="/" component={Main}>
        <IndexRoute component={Home}/>
        <Route path="home" component={Home}/>
        <Route path="about" component={About}/>
        <Route path="pricing" component={Pricing}/>
      </Route>
    </Router>,
    document.getElementById('app')
  );
}
