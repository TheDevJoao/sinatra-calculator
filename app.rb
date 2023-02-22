require 'sinatra'
require_relative './models/calculator'
require_relative './models/operation'
require_relative './models/operation_factory'
require_relative './models/sum_operation'
require_relative './models/subtract_operation'
require_relative './models/multiply_operation'
require_relative './models/divide_operation'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/calculate' do
    input_one = params[:input_one]
    input_two = params[:input_two]
    operation_symbol = params[:operation]

    unless input_one.match(/^\d*\.?\d+$/) && input_two.match(/^\d*\.?\d+$/)
      @error = 'Please enter valid numbers only'
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
