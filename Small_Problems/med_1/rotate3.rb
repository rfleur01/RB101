def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, digits)
  number_array = number.to_s.chars
  number_array[-digits..-1] = rotate_array(number_array[-digits..-1])
  number_array.join.to_i
end

def max_rotation(number)
  counter = number.to_s.size

  if counter > 1
    loop do
      number = rotate_rightmost_digits(number, counter)
      counter -= 1
      break if counter == 1
    end
  else
    number
  end
  number
end

p max_rotation(735291)
p max_rotation(3)
p max_rotation(35)
p max_rotation(105)