require_relative '../exercises/linkedlist/linkedlist'
require_relative '../exercises/linkedlist/node'

RSpec.describe LinkedList do

  describe 'insert_first' do
    it 'appends a node to the start of the list' do
      list = LinkedList.new
      list.insert_first(1)
      expect(list.head.data).to eq(1)
      list.insert_first(2)
      expect(list.head.data).to eq(2)
    end
  end

  describe 'size' do
    it 'returns the number of items in the linked list' do
      list = LinkedList.new
      list.insert_first(1)
      list.insert_first(2)
      list.insert_first(3)

      expect(list.size).to eq(3)
    end
  end

  describe 'take_first' do
    it 'returns the first node in the linked list' do
      list = LinkedList.new
      list.insert_first(1)
      list.insert_first(2)
      list.insert_first(3)


      expect(list.take_first.data).to eq(3)
    end
  end

  describe 'take_last' do
    it 'returns the last node in the linked list' do
      list = LinkedList.new
      list.insert_first(1)
      list.insert_first(2)
      list.insert_first(3)
      
      expect(list.take_last.data).to eq(1)
    end
  end

  describe 'clear' do
    it 'clears the linkedlist' do
      list = LinkedList.new
      list.insert_first(1)
      list.insert_first(2)

      expect(list.clear).to eq(nil)
      expect(list.size).to eq(0)
    end
  end

  describe 'remove_first' do
    it 'removes the first node from the linkedlist' do
      list = LinkedList.new
      list.insert_first(1)
      list.insert_first(2)
      list.insert_first(3)
      list.remove_first

      expect(list.size).to eq(2)
      expect(list.take_first.data).to eq(2)
      list.remove_first
      expect(list.size).to eq(1)
      expect(list.take_first.data).to eq(1)

    end
  end

  describe 'remove_last' do
    it 'removes the last node from the list' do
      list = LinkedList.new
      list.insert_first(1)
      list.insert_first(2)
      list.insert_first(3)

      list.remove_last

      expect(list.size).to eq(2)
      list.remove_last
      expect(list.size).to eq(1)
      expect(list.take_first.data).to eq(3)
    end
  end

  describe 'insert_last' do
    it 'inserts a new node at the end of the list' do
      list = LinkedList.new
      list.insert_first(1)
      list.insert_first(2)
      list.insert_first(3)
      list.insert_last(4)

      expect(list.size).to eq(4)
      expect(list.take_last.data).to eq(4)
    end

    it 'inserts a new node if the list is empty' do
      list = LinkedList.new
      list.insert_last(1)

      expect(list.size).to eq(1)
      expect(list.take_last.data).to eq(1)
    end
  end

  describe 'take_at' do
    it 'finds a node at a given index' do
      list = LinkedList.new
      list.insert_first(1)
      list.insert_first(2)

      expect(list.size).to eq(2)
      expect(list.take_at(1).data).to eq(1)
    end
  end

  describe 'remove_at' do
    it 'removes a node from a specified index' do
      list = LinkedList.new
      list.insert_first(1)
      list.insert_first(2)
      list.remove_at(1)

      expect(list.size).to eq(1)
      expect(list.take_last.data).to eq(2)
    end
  end

  describe 'insert_at' do
    it 'inserts a new node at a given index' do
      list = LinkedList.new
      list.insert_first(1)
      list.insert_first(2)
      list.insert_at(4, 3)

      expect(list.size).to eq(3)
      expect(list.take_first.data).to eq(2)
    end

    it 'inserts a new node at 0 index with list not empty' do
      list = LinkedList.new
      list.insert_last(1)
      list.insert_last(2)
      list.insert_at(4, 0)

      expect(list.take_at(0).data).to eq(4)
    end

    it 'inserts a new node at the start if list is empty' do
      list = LinkedList.new
      list.insert_at(10, 2)

      expect(list.size).to eq(1)
      expect(list.take_first.data).to eq(10)
    end
  end
end