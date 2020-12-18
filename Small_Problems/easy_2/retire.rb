puts "What is your name?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retire_age = gets.chomp.to_i

current_year = Time.now.year
years_of_work = (retire_age - age)
retire_year =  years_of_work + current_year

puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You only have #{years_of_work} to go!"
