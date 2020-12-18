def find_fibonacci_index_by_length(integer)
  
  fibonacci_array = [1, 1]
  next_num = 0
  counter = 0
  
  loop do
    next_num = fibonacci_array[counter] + fibonacci_array[counter + 1]
    fibonacci_array << next_num
    counter += 1
    break if integer == next_num.to_s.size
  end
  fibonacci_array.size
end

puts find_fibonacci_index_by_length(2)
puts find_fibonacci_index_by_length(10000)