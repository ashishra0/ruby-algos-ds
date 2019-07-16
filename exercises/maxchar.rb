def maxChar(str)
  charMap = {}
  max = 0
  maxVal = ''

  str.split('').each do |i|
    if charMap[i]
      charMap[i] += 1
    else
      charMap[i] = 1
    end
  end

  charMap.each do |k, v|
    if charMap[k] > max
      max = charMap[k]
      maxVal = k
    end
  end
  maxVal
end