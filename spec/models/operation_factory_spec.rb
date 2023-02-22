require_relative '../spec_helper'

RSpec.describe 'OperationFactory' do
  describe '#create_operation' do
    context 'when operation symbol is valid' do
      it 'returns an instance of SumOperation' do
        expect(OperationFactory.create_operation('+'))
          .to be_an_instance_of(SumOperation)
      end

      it 'returns an instance of SubtractOperation' do
        expect(OperationFactory.create_operation('-'))
          .to be_an_instance_of(SubtractOperation)
      end

      it 'returns an instance of MultiplyOperation' do
        expect(OperationFactory.create_operation('x'))
          .to be_an_instance_of(MultiplyOperation)
      end

      it 'returns an instance of DivideOperation' do
        expect(OperationFactory.create_operation('/'))
          .to be_an_instance_of(DivideOperation)
      end
    end

    context 'when operation symbol is invalid' do
      it 'returns an ArgumentError' do
        expect { OperationFactory.create_operation('invalid_symbol') }
          .to raise_error(ArgumentError, 'Invalid operation: invalid_symbol')
      end
    end
  end
end
