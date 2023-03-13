require 'sinatra'
require_relative './models/calculator'
require_relative './models/operation'
require_relative './models/operation_factory'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/calculate' do
    input_one = params[:input_one]
    input_two = params[:input_two]
    operation_symbol = params[:operation]

    unless input_one.match?(Calculator::VALID_INPUT) && input_two.match?(Calculator::VALID_INPUT)
      @error_message = 'Please enter valid numbers only'
      return erb :index
    end

    operation = OperationFactory.create_operation(operation_symbol)
    @result = Calculator.new(operation).calculate(
      first_operand: input_one.to_f,
      second_operand: input_two.to_f
    )

    erb :index
  end
end
