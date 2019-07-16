require_relative './node'

class LinkedList
  attr_accessor :head
  def initialize()
    @head = nil
  end

  def insert_first(data)
    @head = Node.new(data, @head)
  end

  def size
    counter = 0
    node = @head
    while node
      counter += 1
      node = node.nextnode
    end
    counter
  end
  
  def take_first
    @head
  end

  def take_last
    node = @head if @head
    while node
      unless node.nextnode
        return node
      end
      node = node.nextnode
    end
  end

  def clear
    @head = nil
  end

  def remove_first
    @head = @head.nextnode if @head
  end

  def remove_last
    unless @head.nextnode
      @head = nil
    end

    previous = @head
    node = @head.nextnode
    while node.nextnode
      previous = node
      node = node.nextnode
    end
    previous.nextnode = nil
  end

  def insert_last(data)
    unless @head
      return insert_first(data)
    end

    last_node = take_last
    last_node.nextnode = Node.new(data)
  end

  def take_at(index)
    if index == 0
      @head
    end

    counter = 0
    node = @head
    while node
      return node if counter == index

      counter += 1
      node = node.nextnode
    end
  end

  def remove_at(index)
    return unless @head

    if index.zero?
      @head = @head.next
    end

    previous = take_at(index - 1)

    if previous || previous.nextnode
      previous.nextnode = previous.nextnode.nextnode
    end
  end

  def insert_at(data, index)
    unless @head
      return insert_first(data)
    end

    if index.zero?
      @head = Node.new(data, @head)
    end

    previous = take_at(index - 1) || take_last
    node = Node.new(data, previous.nextnode)
    previous.nextnode = node;
  end
end
