require_relative '../linkedlist'

def circular(list)
  slow = list.take_first
  fast = list.take_first

  while fast.nextnode and fast.nextnode.nextnode
    slow = slow.nextnode
    fast = fast.nextnode.nextnode
    return true if slow == fast
  end
  return false
end