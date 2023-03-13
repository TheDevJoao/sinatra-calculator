require_relative '../spec_helper'

RSpec.describe 'Operation' do
  describe '#operate' do
    it 'raises an NotImplementedError' do
      expect { Operation.new.operate(1, 1) }
        .to raise_error(
          NotImplementedError,
          'The subclasses have to implement the operate method to work!'
        )
    end
  end
end
