UPPERCASE_CHARS = ('A'..'Z').to_a
LOWERCASE_CHARS = ('a'..'z').to_a

def swapcase(string)
  array = string.chars.map do |chars|
    if UPPERCASE_CHARS.include?(char)
      char.downcase
    elsif LOWERCASE_CHARS.include?(char)
      char.upcase
    else
      char
    end
  end
  array.join
end