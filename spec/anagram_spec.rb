require_relative '../exercises/anagram'

describe 'anagram' do
  
  context 'True conditions' do
    it 'checks if "hello" is an anagram of "llohe"' do
      expect(anagram('hello', 'llohe')).to be_truthy
    end

    it 'checks if "hello world" is an anagram of "world hello"' do
      expect(anagram('hello world', 'world hello')).to be_truthy
    end
  end

  context 'False conditions' do
    it 'returns false if two strings are not anagrams' do
      expect(anagram('Hi there', 'Bye there')).to be_falsey
    end
  end
end