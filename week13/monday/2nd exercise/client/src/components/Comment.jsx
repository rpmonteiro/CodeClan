var React = require('react');

var Comment = React.createClass({
  render: function() {
    return (
      <div>
        <h2>{this.props.author}</h2>
        {this.props.children}
      </div>
    );
  }
})

module.exports = Comment;