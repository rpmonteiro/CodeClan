class GigsController < ApplicationController
  def index
    if params[:artist_id]
      artist = Artist.find(params[:artist_id])
      gigs = artist.gigs
    else
      gigs = Gig.all
    end

    render json: gigs.as_json(include: :venue)
  end
end