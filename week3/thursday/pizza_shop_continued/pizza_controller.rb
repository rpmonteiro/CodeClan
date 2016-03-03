require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'json'

require_relative 'models/pizza.rb'

get '/pizza/new' do
  erb(:new)
end

## SHOW
get '/pizza/:id' do
  @pizza = Pizza.find(params[:id])
  erb(:show)
end

## INDEX
get '/pizza' do
  @pizzas = Pizza.all
  erb(:index)
end

post '/pizza' do
  @pizza = Pizza.new(params)
  @pizza.save
  erb(:create)
end
