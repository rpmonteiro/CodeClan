var React = require('react');
var ReactDOM = require('react-dom');
var CountriesBox = require('./components/CountriesBox');

window.onload = function(){
  ReactDOM.render(
    <div>
      <CountriesBox />
    </div>,
    document.getElementById('app')
  );
}
