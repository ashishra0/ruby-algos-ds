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