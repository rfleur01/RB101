DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(string)
  with_numbers = string.split.each do |word|
    word.gsub!(/\b#{word}\b/, DIGIT_HASH[word]) if DIGIT_HASH.include?(word)
  end
  with_numbers.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')