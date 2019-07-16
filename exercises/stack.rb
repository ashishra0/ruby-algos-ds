class Stack
  attr_accessor :data
  def initialize
    @data = []
  end

  def push(record)
    @data.push(record)
  end

  def pop
    @data.pop
  end

  def peak
    @data[@data.length -1]
  end
end