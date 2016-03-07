require_relative('../models/player.rb')

#INDEX
get '/teams' do
end

#NEW
get '/teams/new' do
  erb :'teams/new'
end

#CREATE
post '/teams' do
  @team = Team.new(params)
  @team.save()
end

#SHOW
get '/teams/:id' do
end

#EDIT
get '/teams/:id/edit' do
end

#UPDATE
post '/teams/:id' do
end