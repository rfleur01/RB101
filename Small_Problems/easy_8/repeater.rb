def repeater(string)
  result = ''

  string.each_char do |char|
    result += char * 2
  end
  result
end

p repeater("Good job!")