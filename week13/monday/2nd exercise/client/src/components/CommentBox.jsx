var React = require('react');
var CommentList = require('./CommentList');
var CommentForm = require('./CommentForm');

var sampleData = [
  {id: 1, author:'Rick', text:'cool'},
  {id: 2, author:'Keith', text:'howdy'}
];

var CommentBox = React.createClass({
  getInitialState: function() {
    return {data: sampleData}
  },

  handleCommentSubmit: function(comment) {
    comment.id = Date.now();
    var newComments = this.state.data.concat([comment]);
    this.setState({data: newComments});
  },

  render: function() {
    return (
      <div>
        <h4>Hello I am a Comment Box</h4>
        <CommentList data={this.state.data} />
        <CommentForm onCommentSubmit={this.handleCommentSubmit}/>
      </div>
    );
  }
})

module.exports = CommentBox;