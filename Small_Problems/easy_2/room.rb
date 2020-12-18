puts "What is the length of the room? (in meters)"
length = gets.chomp.to_f

puts "what is the width of the room? (in meters)"
width = gets.chomp.to_f

area_meter = (length * width).round(2)

area_feet = (area_meter * 10.7639).round(2)

puts "The area of the room is #{area_meter} (#{area_feet} square feet)"