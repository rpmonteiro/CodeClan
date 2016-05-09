var React = require('react');

var CommentForm = React.createClass({
  getInitialState: function() {
    return {author: '', text: ''};
  },

  handleAuthorChange: function(event) {
    this.setState({author: event.target.value});
  },

  handleTextChange: function(event) {
    this.setState({text: event.target.value});
  },

  handleSubmit: function(event) {
    event.preventDefault();
    this.props.onCommentSubmit({author: this.state.author, text: this.state.text})
  },

  render: function() {
    return (
      <form onSubmit={this.handleSubmit}>
        <input
          type="text"
          placeholder="Your name"
          value={this.state.author}
          onChange={this.handleAuthorChange}
        />
        <input
          type="text"
          placeholder="Say something..."
          value={this.state.text}
          onChange={this.handleTextChange}
        />
        <button type="submit">Post!</button>
      </form>
    );
  }
})

module.exports = CommentForm;