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

    context 'when the input is two numbers separated by a comma' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add('2,5')).to eq(7)
      end
    end

    context 'when the input is more than two numbers separated by a comma' do
      it 'returns the sum of the numbers' do
        expect(StringCalculator.add('2,3,5,6')).to eq(16)
      end
    end

    context 'when the input has new line delimiters between numbers' do
      it 'returns the sum of all numbers' do
        expect(StringCalculator.add("1\n2,3,4")).to eq(10)
      end
    end

    context 'when a custom delimiter is specified' do
      it 'returns the sum of all numbers using the custom delimiter' do
        expect(StringCalculator.add("//;\n1;2;5")).to eq(8)
      end

      it 'returns the sum of all numbers using a different custom delimiter' do
        expect(StringCalculator.add("//|\n2|3|4|2")).to eq(11)
      end
    end

    context 'when a custom delimiter, comma, newline specified' do
      it 'returns the sum of all numbers with returns the sum of all numbers' do 
        expect(StringCalculator.add("//;\n1;2,5")).to eq(8)
      end
    end

  end
end
