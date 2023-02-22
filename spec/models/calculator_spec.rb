require_relative '../spec_helper'

RSpec.describe 'Calculator' do

  describe '#calculate' do
    context 'when adding' do
      it 'adds two numbers' do
        result = Calculator.new(SumOperation.new).calculate(first_operand: 3, second_operand: 3)
        expect(result).to eq(6)
      end
    end

    context 'when subtracting' do
      it 'subtracts two numbers' do
        result = Calculator.new(SubtractOperation.new).calculate(first_operand: 3, second_operand: 3)
        expect(result).to eq(0)
      end
    end

    context 'when multiplying' do
      it 'multiplies two numbers' do
        result = Calculator.new(MultiplyOperation.new).calculate(first_operand: 3, second_operand: 3)
        expect(result).to eq(9)
      end
    end

    context 'when dividing' do
      it 'divides two numbers' do
        result = Calculator.new(DivideOperation.new).calculate(first_operand: 3, second_operand: 3)
        expect(result).to eq(1)
      end
    end

    context 'when dividing and denominator is zero' do
      it 'returns a ZeroDivisionError' do
        expect { Calculator.new(DivideOperation.new).calculate(first_operand: 3, second_operand: 0) }
          .to raise_error(ZeroDivisionError, 'Cannot divide by zero!')
      end
    end
  end
end
