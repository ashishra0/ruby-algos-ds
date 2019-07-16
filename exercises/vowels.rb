def vowels(str)
  count = 0
  vowel = 'aeiou'
  str.split('').each do |i|
    if vowel.include?(i)
      count += 1
    end
  end
  count
end