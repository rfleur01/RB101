DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  integer = []
  string.split.each do |str| integer << DIGITS[str]
  integer.join
  end
   
end

puts string_to_integer("22345")