class Operation
  def operate(first_operand, second_operand)
    raise NotImplementedError, 'The subclasses have to implement the operate method to work!'
  end
end
