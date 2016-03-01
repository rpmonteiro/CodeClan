require 'sinatra'
require 'sinatra/contrib/all'
require 'json'

require_relative './models/calculator'

get '/all/:num1/:num2' do
  content_type :json

  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  result = {
    add: calculator.add,
    subtract: calculator.subtract,
    divide: calculator.divide,
    multiply: calculator.multiply
  }
  return result.to_json
end

get '/add/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  @calculation = calculator.add
  erb(:'user/result')
end

get '/subtract/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  @calculation = calculator.subtract
    erb(:'user/result')
end

get '/divide/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  @calculation = calculator.divide
  erb(:'user/result')
end
