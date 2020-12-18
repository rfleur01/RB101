def leading_substrings(string)
  strings = string.chars
  result = []
    0.upto(strings.size - 1) do |index|
      result << string[0..index]
    end
  result
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def palindromes(string)
  substrings(string).select do |chars|
    chars.size > 1 && chars == chars.reverse
  end
end

p palindromes('knitting cassettes')