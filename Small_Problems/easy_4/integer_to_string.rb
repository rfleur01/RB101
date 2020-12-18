DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = []
  number.digits.each do |num|
    result << DIGITS[num]
  end
  result.reverse.join
end

puts integer_to_string(12345)