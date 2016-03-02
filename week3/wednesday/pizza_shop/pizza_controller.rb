require 'sinatra'
require 'sinatra/contrib/all' if development?

get '/pizza/new' do
  erb(:new)
end
