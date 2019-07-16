def capitalize(str)
  word = []
  str.split(' ').each do |i|
    word.push(i[0].upcase + i.slice(1..str.length))
  end
  word.join(' ')
end