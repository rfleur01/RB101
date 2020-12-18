def short_long_short(str1, str2)
  str1 + str2 + str1 if str2.length > str1.length
  str2 + str1 + str1 if str1.length >str2.length
end