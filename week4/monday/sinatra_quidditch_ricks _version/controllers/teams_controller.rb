require_relative('../models/team.rb')

get '/teams' do
  #INDEX
  @teams = Team.all()
  erb :"teams/index"
end

get '/teams/new' do
  #NEW
  erb :"teams/new"
end

post '/teams' do
  #CREATE
  @team = Team.new( params )
  @team.save()
  redirect '/teams'
end

get '/teams/:id' do
  #SHOW
  @team = Team.find(params[:id])
  @players = @team.players()
  erb :"teams/show"
end

get '/teams/:id/edit' do
  #EDIT
  @team = Team.find(params[:id])
  erb :"teams/edit"
end

post '/teams/:id' do
  #UPDATE
  @team = Team.new( params )
  @team.update()
  redirect to("/teams/#{params['id']}")
end

delete '/teams/:id' do
  #DELETE
end
