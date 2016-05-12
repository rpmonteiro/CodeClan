var React = require('react');
var ReactDOM = require('react-dom');
var Main = require('./components/Main.jsx');

window.onload = function(){
  ReactDOM.render(
    <Main></Main>,
    document.getElementById('app')
  );
}
