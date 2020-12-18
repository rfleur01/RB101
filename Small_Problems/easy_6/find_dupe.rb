def find_dup(array)
  array.find { |element| array.count(element) == 2 }
end

puts find_dupe([1, 5, 3, 1])