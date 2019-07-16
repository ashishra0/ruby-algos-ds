require_relative './linkedlist'

def midpoint(list)
  slow = list.take_first
  fast = list.take_first
  while fast.nextnode && fast.nextnode.nextnode
    slow = slow.nextnode
    fast = fast.nextnode.nextnode
  end
  slow
end