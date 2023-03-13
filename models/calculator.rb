class Calculator
  VALID_INPUT = /^-?\d*\.?\d+$/

  def initialize(operation)
    @operation = operation
  end

  def calculate(first_operand:, second_operand:)
    @operation.operate(first_operand, second_operand)
  end
end
