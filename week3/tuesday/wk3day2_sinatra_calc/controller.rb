require 'sinatra'
require 'sinatra/contrib/all'

require_relative './models/calculator'

get '/add/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  return calculator.add.to_s
end

get 'subtract/:num1/:num2' do
  calculator2 = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  return calculator2.subtract.to_s
end

get 'divide/:num1/:num2' do
  calculator3 = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  return calculator3.divide.to_s
end
