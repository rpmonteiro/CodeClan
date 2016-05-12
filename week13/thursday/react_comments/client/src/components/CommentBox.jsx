var React = require('react');
var CommentList = require('./CommentList');
var CommentForm = require('./CommentForm');

var CommentBox = React.createClass({
  getInitialState: function() {
    return {data: [ { _id:1, author:'Jay', text:'Hello' } ]};
  },

  fetchComments: function() {
    var request = new XMLHttpRequest();
    request.open("GET", "/api/comments");
    request.onload = function() {
      var data = JSON.parse(request.responseText);
      this.setState({data: data});
    }.bind(this);
    request.send();
  },

  componentDidMount: function() {
    this.fetchComments();
  },

  handleCommentSubmit: function(comment) {
    // var comments = this.state.data;
    // comment._id = Date.now();
    // var newComments = comments.concat([comment]);
    // this.setState({data: newComments});
    var request = new XMLHttpRequest();
    request.open("POST", 'api/comments');
    request.setRequestHeader("Content-Type", "application/json");
    request.onLoad = function() {
      this.fetchComments();
    }.bind(this)
    request.send(JSON.stringify(comment));
  },
  render: function() {
    return (
      <div className="commentBox">
        <h1>Comments</h1>
        <CommentList data={this.state.data} />
        <CommentForm onCommentSubmit={this.handleCommentSubmit} />
      </div>
    );
  }
});

module.exports = CommentBox;
