require_relative '../exercises/sort'

describe Sort do
  it 'sorts dataset using bubble sort method' do
    arr = [10, -30, 0, -2, 97]
    sorted_arr = [-30, -2, 0, 10, 97]
    bubble = Sort.new

    expect(bubble.bubbleSort(arr)).to eq(sorted_arr)
  end

  it 'sorts dataset using selection sort method' do
    arr = [10, -30, 0, -2, 97]
    sorted_arr = [-30, -2, 0, 10, 97]
    select = Sort.new

    expect(select.selectionSort(arr)).to eq(sorted_arr)
  end

  it 'can join two sorted array' do
    left = [1, 10]
    right = [2, 8, 12]
    obj = Sort.new

    expect(obj.merge(left, right)).to eq([1,2, 8, 10, 12])
  end

  it 'sorts dataset using mergeSort' do
    arr = [10, -30, 0, -2, 97]
    sorted_arr = [-30, -2, 0, 10, 97]
    obj = Sort.new

    expect(obj.mergeSort(arr)).to eq(sorted_arr)
  end
end