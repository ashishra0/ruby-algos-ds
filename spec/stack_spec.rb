require_relative '../exercises/stack'

RSpec.describe Stack do
  describe 'push' do
    it 'inserts a record in the stack' do
      s = Stack.new
      s.push(1)
      s.push(2)
      s.push(3)

      expect(s.data).to include(3, 2, 1)
    end
  end

  describe 'pop' do
    it 'removes the first record from the stack' do
      s = Stack.new
      s.push(1)
      s.push(2)
      s.push(3)

      expect(s.pop).to eq(3)
      expect(s.pop).to eq(2)
    end
  end
end