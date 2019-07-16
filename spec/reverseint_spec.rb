require_relative '../exercises/reverseint'

describe 'integer reverser' do
  context 'positive integers' do
    it 'reverses positive integer' do
      expect(reverse_int(21)).to eq(12)
      expect(reverse_int(900)).to eq(9)
      expect(reverse_int(12342)).to eq(24321)
    end
  end

  context 'negative integers' do
    it 'reverses negative integers' do
      expect(reverse_int(-21)).to eq(-12)
      expect(reverse_int(-900)).to eq(-9)
      expect(reverse_int(-12342)).to eq(-24321)
    end
  end
end