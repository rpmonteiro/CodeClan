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
  return calculator.add.to_s
end

get '/subtract/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  return calculator.subtract.to_s
end

get '/divide/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  return calculator.divide.to_s
end
