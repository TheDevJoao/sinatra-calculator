require_relative 'operation'

class DivideOperation < Operation
  def operate(first_operand, second_operand)
    raise ZeroDivisionError, 'Cannot divide by zero!' if second_operand.zero?

    first_operand / second_operand
  end
end
