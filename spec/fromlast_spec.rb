require_relative '../exercises/fromlast'
require_relative '../exercises/linkedlist/linkedlist'

describe 'from_last' do
  it 'returns the node n elements from the end' do
    list = LinkedList.new
    list.insert_last('a')
    list.insert_last('b')
    list.insert_last('c')
    list.insert_last('d')
    list.insert_last('e')

    expect(from_last(list, 3).data).to eq('b')
  end
end