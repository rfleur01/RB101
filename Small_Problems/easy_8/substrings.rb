def leading_substrings(string)
  strings = string.chars
  result = []
    0.upto(strings.size - 1) do |index|
      result << string[0..index]
    end
  result
end

p leading_substrings('xyzzy')