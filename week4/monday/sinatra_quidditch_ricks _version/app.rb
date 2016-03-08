require( 'sinatra' )
require( 'pry-byebug' )
require_relative('controllers/teams_controller')
require_relative('controllers/players_controller')
require 'sinatra/contrib/all' if development?

get '/' do
  erb :"home"
end
