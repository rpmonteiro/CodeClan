class CommentsController < ApplicationController
  def index
    comments = [
      {
        id: 1,
        author: 'Topogigio',
        text: 'This is a comment'
      },
      {
        id: 2,
        author: 'T-REX',
        text: 'ONOMNOMNOMNOM'
      }
    ]

    render json: comments
  end
end
