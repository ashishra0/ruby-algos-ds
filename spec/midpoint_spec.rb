require_relative '../exercises/midpoint/midpoint'
require_relative '../exercises/midpoint/linkedlist'

describe 'midpoint' do
  context 'odd numbered linked list' do
    it 'returns the middle node' do
      list = LinkedList.new
      list.insert_last('a')
      list.insert_last('b')
      list.insert_last('c')

      expect(midpoint(list).data).to eq('b')
    end
  end

  context 'even numbered linked list' do
    it 'returns the middle node of an even numbered list' do
      list = LinkedList.new
      list.insert_last('a')
      list.insert_last('b')
      list.insert_last('c')
      list.insert_last('d')

      expect(midpoint(list).data).to eq('b')
    end
  end
end