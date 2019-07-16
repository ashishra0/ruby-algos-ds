require_relative './linkedlist/linkedlist'

def from_last(list, n)
  slow = list.take_first
  fast = list.take_first

  while n > 0
    fast = fast.nextnode
    n -= 1
  end

  while fast.nextnode
    slow = slow.nextnode
    fast = fast.nextnode
  end
  slow
end