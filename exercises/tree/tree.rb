require 'pry'
class TreeNode
  attr_accessor :data, :children
  def initialize(data)
    @data = data
    @children = []
  end

  def add(data)
    children.push(TreeNode.new(data))
  end

  def remove(data)
    children.find do |child|
      if child.data == data
        children.delete(child)
      end
    end
  end
end

class Tree
  attr_accessor :root
  def initialize
    @root
  end

  def traverse_bf
    letters = []
    arr = [root]
    while arr.length
      node = arr.shift
      letters.push(node.data)
    end
  end

end