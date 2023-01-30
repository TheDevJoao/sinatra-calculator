require 'sinatra'
require_relative './models/calculator'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/calculate' do
    input_one = params[:input_one]
    input_two = params[:input_two]
    @result = Calculator.get_operation(params).calculate
    
    erb :index
  end
end