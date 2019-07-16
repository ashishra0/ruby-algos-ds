def reverse_int(n)
  int_arr = n.to_s.split('')
  new_arr = []
  int_arr.length.times { new_arr << int_arr.pop }
  new_int = new_arr.join('').to_i

  if n < 0
    new_int * -1
  else
    new_int
  end

end 