def penultimate(words)
  words_array = words.split
  words_array[-2]
end

p penultimate('Launch School is great!')