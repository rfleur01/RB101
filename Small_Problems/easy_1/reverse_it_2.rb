def reverse_words(sentence)
  words = []
  
  sentence.split.each |word| do
    word.reverse! if word.size >= 5
    words.push(word)
  end
  
  words.join(' ')
end 