require_relative '../exercises/vowels'

describe 'vowels' do
  it 'returns the number of vowels in a string' do
    str = 'mynameisashishrao'
    new_str = 'doesthisincludeanyvowel'
    expect(vowels(str)).to eq(7)
    expect(vowels(new_str)).to eq(9)
  end
end