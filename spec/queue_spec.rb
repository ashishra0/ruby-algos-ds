require_relative '../exercises/queue'

RSpec.describe Queue do
  describe 'add' do
    it 'inserts a record in the queue' do
      q = Queue.new
      q.add(1)
      q.add(2)
      
      expect(q.data).to include(2, 1)
    end
  end

  describe 'remove' do
    it 'removes the first added record from the queue' do
      q = Queue.new
      q.add(1)
      q.add(2)
      q.add(3)

      expect(q.remove).to eq(1)
    end
  end

  describe 'peek' do
    it 'returns but does not remove the first value in queue' do
      q = Queue.new
      q.add(1)
      q.add(2)
      q.add(3)

      expect(q.peek).to eq(1)
      q.remove
      expect(q.peek).to eq(2)
    end
  end
end