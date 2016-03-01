require 'sinatra'
require 'sinatra/contrib/all' if development?

get '/info' do
  return 'info page.. yeahh'
end

get '/name/:first/:last' do
  return "your name is #{params[:first]}  #{params[:last]}"
end

get '/address' do
  return 'I live here.'
end

get '/hello' do
  return 'hello world!'
end
