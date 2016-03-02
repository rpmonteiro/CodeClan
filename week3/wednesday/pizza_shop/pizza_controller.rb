require 'sinatra'
require 'sinatra/contrib/all' if development?

require_relative 'models/pizza.rb'

get '/pizza/new' do
  erb(:new)
end

post '/pizza' do
  @pizza = Pizza.new(params)
  erb(:create)
end
