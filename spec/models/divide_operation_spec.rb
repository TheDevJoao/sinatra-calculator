require_relative '../spec_helper'

RSpec.describe DivideOperation do
  let(:divide) { DivideOperation.new }

  describe '#operate' do
    context 'when dividing two positive numbers' do
      it 'returns the correct division' do
        result = divide.operate(6, 2)
        expect(result).to eq(3)
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
