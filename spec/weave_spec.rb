require_relative '../exercises/weave'
require_relative '../exercises/queue'

describe 'weave' do
  it 'combines two queues' do
    q1 = Queue.new
    q1.add(1)
    q1.add(2)
    q1.add(3)
    q2 = Queue.new
    q2.add('one')
    q2.add('two')
    q2.add('three')
    result = weave(q1, q2)

    expect(result.remove()).to eq(1)
    expect(result.remove()).to eq('one')
  end
end
