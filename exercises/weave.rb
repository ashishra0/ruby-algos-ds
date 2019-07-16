require_relative 'queue'

def weave(sourceOne, sourceTwo)
  q = Queue.new

  while sourceOne.peek || sourceTwo.peek
    if sourceOne.peek
      q.add(sourceOne.remove)
    end

    if sourceTwo.peek
      q.add(sourceTwo.remove)
    end
  end
  q
end