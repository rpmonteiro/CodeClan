require_relative('../models/player.rb')
require_relative('../models/team.rb')

post '/players' do
  #CREATE
  @player = Player.new( params )
  @player.save()
  redirect to("/teams/#{params['team_id']}")
end

get '/players/:id' do
  #SHOW
  @player = Player.find(params[:id])
  @team = @player.team()
  erb :"players/show"
end

get '/players/:id/edit' do
  #EDIT
  @player = Player.find(params[:id])
  @teams = Team.all()
  erb :"players/edit"
end

post '/players/:id' do
  #UPDATE
  @player = Player.new( params )
  @player.update()
  redirect to("/teams/#{params['team_id']}")
end

delete '/players/:id' do
  #DELETE
end