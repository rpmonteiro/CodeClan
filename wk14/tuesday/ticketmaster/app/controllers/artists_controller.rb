class ArtistsController < ApplicationController
  def index
    artists = Artist.all
    render json: artists
  end

  def show
    artist = Artist.find(params[:id])
    render json: artist.as_json(
      include: [
        { albums: { include: :tracks } },
        { gigs: { include: :venue } }
      ]
    )
  end
end
