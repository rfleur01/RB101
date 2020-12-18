def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))