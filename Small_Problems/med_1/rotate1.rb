def rotate_array(array)
  new_array = array
  new_array << array.shift
end

p rotate_array([7, 3, 5, 2, 9, 1])