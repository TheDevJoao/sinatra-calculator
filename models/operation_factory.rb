require_relative 'sum_operation'
require_relative 'subtract_operation'
require_relative 'multiply_operation'
require_relative 'divide_operation'

class OperationFactory
  OPERATIONS = {
    '+': SumOperation,
    '-': SubtractOperation,
    'x': MultiplyOperation,
    '/': DivideOperation
  }

  def self.create_operation(operation_symbol)
    operation = OPERATIONS[operation_symbol.to_sym]
    raise ArgumentError, "Invalid operation: #{operation_symbol}" unless operation

    operation.new
  end
end
