require_relative '../spec_helper'

RSpec.describe SumOperation do
  let(:add) { SumOperation.new }

  describe '#operate' do
    context 'when adding two positive numbers' do
      it 'returns the correct sum' do
        result = add.operate(3, 4)
        expect(result).to eq(7)
      end
    end

    context 'when adding two negative numbers' do
      it 'returns the correct sum' do
        result = add.operate(-3, -4)
        expect(result).to eq(-7)
      end
    end

    context 'when adding two floating-point numbers' do
      it 'returns the correct sum' do
        result = add.operate(3.5, 4.5)
        expect(result).to eq(8.0)
      end
    end
  end
end
