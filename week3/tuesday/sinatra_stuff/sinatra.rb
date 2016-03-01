require 'sinatra'
require 'sinatra/contrib/all' if development?

get '/info' do
  return 'info page.. yeahh'
end

get '/name' do
  return 'oh hai!'
end

get '/address' do
  return 'I live here.'
end

get '/hello' do
  return 'hello world!'
end
