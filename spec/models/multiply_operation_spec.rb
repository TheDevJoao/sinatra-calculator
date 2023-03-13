require_relative '../spec_helper'

RSpec.describe MultiplyOperation do
  let(:multiply) { MultiplyOperation.new }

  describe '#operate' do
    context 'when multiplying two positive numbers' do
      it 'returns the correct multiplication' do
        result = multiply.operate(2, 4)
        expect(result).to eq(8)
      end
    end

    context 'when multiplying two negative numbers' do
      it 'returns the correct multiplication' do
        result = multiply.operate(-2, -2)
        expect(result).to eq(4)
      end
    end

    context 'when multiplying two floating-point numbers' do
      it 'returns the correct multiplication' do
        result = multiply.operate(2.5, 2.5)
        expect(result).to eq(6.25)
      end
    end
  end
end
