def str_reverser(str)
  str_arr = str.split('')
  new_str = []
  str.length.times { new_str << str_arr.pop }
  new_str.join('')
end