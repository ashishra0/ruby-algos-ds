require_relative '../exercises/maxchar'


describe 'maximum characters' do
  it 'finds the most frequent occuring character' do
    expect(maxChar('aaaabcdefhgh')).to eq('a')
    expect(maxChar('b')).to eq('b')
  end

  it 'works with numbers in the string' do
    expect(maxChar('a1b1c1d1')).to eq('1')
  end
end