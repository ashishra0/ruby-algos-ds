require_relative '../exercises/fizzbuzz'

describe 'fizzbuzz' do
  context 'number divisible by 3 and 5' do
    it 'returns fizzbuzz' do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.divisible_by(15)).to eq('fizzbuzz')
      expect(fizzbuzz.divisible_by(30)).to eq('fizzbuzz')  
    end
  end

  context 'number divisible by 3' do
    it 'returns fizz' do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.divisible_by(3)).to eq('fizz')
      expect(fizzbuzz.divisible_by(9)).to eq('fizz')
    end
  end

  context 'number divisible by 5' do
    it 'returns buzz' do
      fizzbuzz = FizzBuzz.new
      expect(fizzbuzz.divisible_by(5)).to eq('buzz')
      expect(fizzbuzz.divisible_by(10)).to eq('buzz')
    end
  end
end