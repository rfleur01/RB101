def sum_of_sums(numbers)
  sum_total = 0
  counter = 0

  numbers.each do |num|
    counter += num
    sum_total += counter
  end

  sum_total
end
p sum_of_sums([1, 5, 7, 3])

