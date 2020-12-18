def buy_fruit(fruits)
  fruit_list = []
  fruits.each do |fruit|
    fruit[1].times do |item|
      fruit_list << fruit[0]
    end
  end
  fruit_list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])