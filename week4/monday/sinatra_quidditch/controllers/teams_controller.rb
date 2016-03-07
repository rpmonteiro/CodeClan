require_relative('../models/player.rb')

#INDEX
get '/teams' do
  @teams = Team.get_all
  erb :'teams/index'
end

#NEW
get '/teams/new' do
  erb :'teams/new'
end

#CREATE
post '/teams' do
  @team = Team.new(params)
  @team.save()
  redirect '/teams'
end

#SHOW
get '/teams/:id' do
  @team = Team.find(params[:id])
end

#EDIT
get '/teams/:id/edit' do
end

#UPDATE
post '/teams/:id' do
end