require_relative '../exercises/palindrome'

describe 'palindrome' do
  it 'checks if a word is palindrome' do
    expect(palindrome?('Racecar')).to be(true)
    expect(palindrome?('Apple')).to be(false)
    expect(palindrome?('kayak')).to be(true)
  end
end