require_relative '../exercises/reversestr'

describe 'String reverser' do
  it 'reverses the string' do
    test_str = 'ashish'
    expect(str_reverser(test_str)).to eq('hsihsa')
  end
end
