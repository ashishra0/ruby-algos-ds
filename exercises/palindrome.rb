def palindrome?(str)
  str_arr = str.downcase.split('')
  new_str = []
  str.length.times { new_str << str_arr.pop }
  str.downcase == new_str.join('')
end