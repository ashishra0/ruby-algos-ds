require_relative'../exercises/tree/tree_node'

RSpec.describe TreeNode do
  it 'has data and children properties' do
    n = TreeNode.new('a')
    expect(n.data).to eq('a')
    expect(n.children.length).to eq(0)
  end

  it 'can add children' do
    n = TreeNode.new('a')
    n.add('b')
    expect(n.children.length).to eq(1)
  end

  it 'can remove children' do
    n = TreeNode.new('a')
    n.add('b')
    n.add('c')
    expect(n.children.length).to eq(2)
    n.remove('c')
    expect(n.children.length).to eq(1)
  end
end