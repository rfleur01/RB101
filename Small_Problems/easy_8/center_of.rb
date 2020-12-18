def center_of(string)
  center_string = string.size / 2
  if string.size.odd?
    string.slice(center_string)
  else
    string.slice((center_string - 1)..half_string_size)
  end
end

p center_of('Launchschool')