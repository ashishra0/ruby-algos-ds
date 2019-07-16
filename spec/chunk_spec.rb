require_relative '../exercises/chunk'

describe 'chunk' do
  it 'divides an array of 5 elements with chunk size 2' do
    arr = [1,2,3,4,5]
    expect(chunk(arr, 2)).to eq([[1,2],[3,4],[5]])
  end

  it 'divides an array of 10 elements with chunk size of 5' do
    arr = [1,2,3,4,5,6,7,8,9,10]
    expect(chunk(arr, 5)).to eq([[1,2,3,4,5],[6,7,8,9,10]])
  end
end