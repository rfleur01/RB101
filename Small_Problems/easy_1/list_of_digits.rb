def digit_list(integer)
  integer.to_s.chars.map(&:to_i)
end

puts digit_list(12345)
puts digit_list(3252)
puts digit_list(45)