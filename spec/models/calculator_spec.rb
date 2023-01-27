require_relative '../spec_helper'

describe Calculator do
  subject(:calculator) { Calculator.new() }

  describe '#initialize' do
    it 'initializes an instance variable called result' do
      expect(calculator.instance_variable_get(:@result)).to eq(0)
    end
  end

  describe '#add' do
    it 'adds two numbers' do
      expect(calculator.add(2, 2).result).to eq(4)
    end
  end

  describe '#add' do
    it 'adds two numbers' do
      expect(calculator.add(2, 2).result).to eq(4)
    end
  end

  describe '#subtract' do
    it 'subtracts two numbers' do
      expect(calculator.subtract(2, 2).result).to eq(0)
    end
  end

  describe '#multiply' do
    it 'multiplies two numbers' do
      expect(calculator.multiply(3, 3).result).to eq(9)
    end
  end

  describe '#divide' do
    context 'when inputs are not zero' do  
      it 'divides two numbers' do
        expect(calculator.divide(9, 3).result).to eq(3)
      end
    end

    context 'when an input is zero' do
      it 'throws an error when dividing by zero' do
        expect { calculator.divide(0,3).result }.to raise_error(ZeroDivisionError, "Cannot divide by zero!")
      end
    end
  end
end