require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'json'

require_relative 'models/pizza.rb'

## NEW
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

## EDIT
get '/pizza/:id/edit' do
  @pizza = Pizza.find(params[:id])
  erb(:edit)
end

## UPDATE
post '/pizza/:id' do
  @pizza = Pizza.update(params)
  redirect to '/pizza/#{params[:id]}'
end

## CREATE
post '/pizza' do
  @pizza = Pizza.new(params)
  @pizza.save
  redirect to '/pizza'
end

## DESTROY
post '/pizza/:id/delete' do
  Pizza.destroy(params[:id])
end