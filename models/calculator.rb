class Calculator

  attr_reader :input_one, :input_two
  
  def initialize(params)
    @input_one = params[:input_one].to_f
    @input_two = params[:input_two].to_f
  end

  def calculate
    raise NotImplementedError, "Method not yet implemented"
  end
  
  def self.get_operation params
    operation = params[:operation]
    case operation
    when "+"
      Addition.new(params)
    when "-"
      Subtraction.new(params)
    when "x"
      Multiplication.new(params)
    when "/"
      Division.new(params)
    end
  end
  
end

class Addition < Calculator 
  
  def calculate
    input_one + input_two
  end
  
end

class Subtraction < Calculator
  
  def calculate
    input_one - input_two
  end
  
end

class Multiplication < Calculator
  
  def calculate
  input_one * input_two
  end
  
end

class Division < Calculator
  
  def calculate
    raise ZeroDivisionError, "Cannot divide by zero!" if input_two == 0
  
    input_one / input_two
  end
  
end