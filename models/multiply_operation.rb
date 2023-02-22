require_relative 'operation'

class MultiplyOperation < Operation
  def operate(first_operand, second_operand)
    first_operand * second_operand
  end
end
