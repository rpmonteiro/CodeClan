var React = require('react');
var ReactDOM = require('react-dom');
var CommentBox = require('./components/CommentBox');

window.onload = function(){
  ReactDOM.render(
    <div>
      <CommentBox />
    </div>,
    document.getElementById('app')
  );
}
