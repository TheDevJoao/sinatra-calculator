class DivideOperation < Operation
  def operate(first_operand, second_operand)
    if second_operand.zero?
      raise ArgumentError, 'Both operands cannot be zero!' if first_operand.zero?

      raise ZeroDivisionError, 'Cannot divide by zero!'
    else
      first_operand / second_operand
    end
  end
end
