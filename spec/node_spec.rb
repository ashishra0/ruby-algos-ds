require_relative '../exercises/linkedlist/node'

RSpec.describe Node do
  it 'should initialize with an argument' do
    node = Node.new(1, 1)
    expect(node).to be_an_instance_of(Node)
    expect(node.data).to eq(1)
    expect(node.nextnode).to eq(1)
  end
end