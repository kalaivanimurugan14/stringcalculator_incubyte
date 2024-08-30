require 'rspec'
require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    
    context 'when the input is an empty string' do
      it 'returns 0' do
        expect(StringCalculator.add('')).to eq(0)
      end
    end

    context 'when the input is a single digit' do
      it 'returns 1' do
        expect(StringCalculator.add('1')).to eq(1)
      end
    end

  end
end
