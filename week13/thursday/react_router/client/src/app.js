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
    <Main></Main>,
    document.getElementById('app')
  );
}
