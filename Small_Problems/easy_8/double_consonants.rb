CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''

  string.each_char do |char|
    if CONSONANTS.include?(char.downcase)
      result += char * 2
    else
      result += char
    end
  end
  result
end

p double_consonants("July 4th")