require_relative '../spec_helper'

RSpec.describe 'Calculator' do
  let(:operation) { instance_double(Operation) }
  let(:calculator) { Calculator.new(operation) }

  describe '#calculate' do
    it 'adds two numbers' do
      allow(operation).to receive(:operate).with(3, 3).and_return(6)
      expect(calculator.calculate(first_operand: 3, second_operand: 3)).to eq(6)
    end

    it 'subtracts two numbers' do
      allow(operation).to receive(:operate).with(3, 3).and_return(0)
      expect(calculator.calculate(first_operand: 3, second_operand: 3)).to eq(0)
    end

    it 'multiplies two numbers' do
      allow(operation).to receive(:operate).with(3, 3).and_return(9)
      expect(calculator.calculate(first_operand: 3, second_operand: 3)).to eq(9)
    end

    context 'when dividing' do
      it 'divides two numbers' do
        allow(operation).to receive(:operate).with(9, 3).and_return(3)
        expect(calculator.calculate(first_operand: 9, second_operand: 3)).to eq(3)
      end

      it 'and denominator is zero' do
        allow(operation).to receive(:operate).with(3, 0).and_raise(ZeroDivisionError.new('Cannot divide by zero!'))
        expect { calculator.calculate(first_operand: 3, second_operand: 0) }.to raise_error(ZeroDivisionError)
      end

      it 'and both numerator and denomitator are zero' do
        allow(operation).to receive(:operate).with(0, 0).and_raise(ArgumentError.new('Both operands cannot be zero!'))
        expect { calculator.calculate(first_operand: 0, second_operand: 0) }.to raise_error(ArgumentError)
      end
    end
  end
end
