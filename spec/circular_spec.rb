require_relative '../exercises/circular'
require_relative '../exercises/linkedlist/linkedlist'
require_relative '../exercises/linkedlist/node'


describe 'circular' do
  context 'valid scenario' do
    it 'detects circular linked lists' do
      list = LinkedList.new
      a = Node.new('a')
      b = Node.new('b')
      c = Node.new('c')
      d = Node.new('d')

      list.head = a
      a.nextnode = b
      b.nextnode = c
      c.nextnode = d
      d.nextnode = c

      expect(circular(list)).to be_truthy
    end

    it 'detects circular linked list linked at the head' do
      list = LinkedList.new
      a = Node.new('a')
      b = Node.new('b')
      c = Node.new('c')

      list.head = a
      a.nextnode = b
      b.nextnode = c
      c.nextnode = a

      expect(circular(list)).to be_truthy
    end
  end
end