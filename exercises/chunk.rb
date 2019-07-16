def chunk(array, val)
  new_arr = []

  array.each do |e|
    last = new_arr[new_arr.length - 1]
    if (!last || last.length === val)
      new_arr.push([e])
    else
      last.push(e)
    end
  end
  return new_arr
end