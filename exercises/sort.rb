require 'pry'

class Sort

  def bubbleSort(arr)
    n = arr.length

    loop do
      swapped = false

      (n-1).times do |i|
        if arr[i] > arr[i+1]
          arr[i], arr[i+1] = arr[i+1], arr[i]
          swapped = true;
        end
      end
      break if not swapped
    end
    arr
  end

  def selectionSort(arr)
    n = arr.length - 1
    n.times do |i|
      min_index = i

      (i + 1).upto(n) do |j|
        min_index = j if arr[j] < arr[min_index]
      end
      if min_index != i
      arr[i], arr[min_index] = arr[min_index], arr[i]
      end
    end
    arr
  end

  def mergeSort(arr)
    if arr.length === 1
      return arr
    end

    center = (arr.length / 2).round
    left = arr.take(center)
    right = arr.drop(center)

    return merge(mergeSort(left), mergeSort(right))
  end

  def merge(left, right)
    result = []
    if left[0] < right[0]
      result << left.shift
    else
      result << right.shift
    end

    if left.length == 0
      result + right
    elsif right.length == 0
      result + left
    else
      result + merge(left, right)
    end
  end
end