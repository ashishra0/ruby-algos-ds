class Queue
  attr_accessor :data
  def initialize
    @data = []
  end

  def add(record)
    @data.unshift(record)
  end

  def remove
    @data.pop
  end
  
  def peek
    @data[@data.length - 1]
  end
  
end