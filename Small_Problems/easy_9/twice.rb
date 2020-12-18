def twice(integer)
  integer_string = integer.to_s
  center = integer_string.size / 2
  first_half = integer_string[0.. center - 1]
  second_half = integer_string[center.. -1]

  if first_half == second_half
    return integer
  else
    return integer * 2
  end
end

puts twice(107)
puts twice(103103)