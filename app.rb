require 'sinatra'
require_relative './models/calculator'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/error' do 
    status 404
    erb:error 
  end

  post '/calculate' do
    calculator = Calculator.new
    operation = params[:operation]
    input_one = params[:input_one].to_f
    input_two = params[:input_two].to_f

    case operation
    when "+"
      @result = calculator.add(input_one, input_two).result
    when "-"
      @result = calculator.subtract(input_one, input_two).result
    when "x"
      @result = calculator.multiply(input_one, input_two).result
    when "/"
      begin
        if input_one == 0 || input_two == 0
          raise ZeroDivisionError, "Cannot divide by zero!"
        end
        @result = calculator.divide(input_one, input_two).result
      rescue ZeroDivisionError
        redirect '/error'
      end
    end
    if @result.round == @result
      @result = @result.to_i
    else
      @result = @result.round(2)
    end
    erb :index
  end
end