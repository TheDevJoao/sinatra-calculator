class OperationFactory
  def self.create_operation(operation_symbol)
    case operation_symbol
    when '+'
      SumOperation.new
    when '-'
      SubtractOperation.new
    when 'x'
      MultiplyOperation.new
    when '/'
      DivideOperation.new
    else
      raise ArgumentError, "Invalid operation: #{operation_symbol}"
    end
  end
end
