def negative(number)
  number.negative? ? number : -number
end

p negative(5)
p negative(-3)
p negative(0)