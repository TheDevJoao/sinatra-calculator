require_relative '../spec_helper'

RSpec.describe DivideOperation do
  let(:divide) { DivideOperation.new }

  describe '#operate' do
    context 'when dividing two positive numbers' do
      it 'returns the correct division' do
        result = divide.operate(6, 2)
        expect(result).to eq(3)
      end

      it 'and denominator is zero' do
        expect { divide.operate(3, 0) }.to raise_error(ZeroDivisionError, 'Cannot divide by zero!')
      end

      it 'and both numerator and denomitator are zero' do
        expect { divide.operate(0, 0) }.to raise_error(ArgumentError, 'Both operands cannot be zero!')
      end
    end

    context 'when dividing two negative numbers' do
      it 'returns the correct division' do
        result = divide.operate(-10, -5)
        expect(result).to eq(2)
      end
    end

    context 'when dividing two floating-point numbers' do
      it 'returns the correct division' do
        result = divide.operate(2.5, 2.5)
        expect(result).to eq(1)
      end
    end
  end
end
