require_relative 'operation'

class SumOperation < Operation
  def operate(first_operand, second_operand)
    first_operand + second_operand
  end
end
