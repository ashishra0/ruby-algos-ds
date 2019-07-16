def anagram(str_one, str_two)
  
  def buildMap(str)
    charMap = {}
    str.gsub(/\s+/, '').downcase.split('').each do |i|
      if charMap[i]
        charMap[i] += 1
      else
        charMap[i] = 1
      end
    end
    return charMap
  end

  oneCharMap = buildMap(str_one)
  twoCharMap = buildMap(str_two)

  if oneCharMap.keys.count != twoCharMap.keys.count
    return false
  end

  oneCharMap.each do |k, v|
    if oneCharMap[k] != twoCharMap[k]
      return false
    end
    return true
  end

end