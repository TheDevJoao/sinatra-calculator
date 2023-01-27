class Calculator
  def initialize
    @result = 0
  end

  def add(input_one, input_two)
    @result = input_one + input_two
    self
  end

  def subtract(input_one, input_two)
    @result = input_one - input_two
    self
  end

  def multiply(input_one, input_two)
    @result = input_one * input_two
    self
  end

  def divide(input_one, input_two)
    if input_one == 0 || input_two == 0
      raise ZeroDivisionError, "Cannot divide by zero!"
    end
    @result = input_one / input_two
    self
  end

  def result
    @result
  end
end