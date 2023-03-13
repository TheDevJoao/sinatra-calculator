require_relative '../spec_helper'

RSpec.describe SubtractOperation do
  let(:subtract) { SubtractOperation.new }

  describe '#operate' do
    context 'when subtracting two positive numbers' do
      it 'returns the correct sum' do
        result = subtract.operate(8, 4)
        expect(result).to eq(4)
      end
    end

    context 'when subtracting two negative numbers' do
      it 'returns the correct subtraction' do
        result = subtract.operate(-3, -4)
        expect(result).to eq(1)
      end
    end

    context 'when subtracting two floating-point numbers' do
      it 'returns the correct subtraction' do
        result = subtract.operate(-5.5, -7.5)
        expect(result).to eq(2.0)
      end
    end
  end
end
