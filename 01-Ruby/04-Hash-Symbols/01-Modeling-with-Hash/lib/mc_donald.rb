def poor_calories_counter(burger, side, beverage)
  #TODO: return number of calories for this mcDonald order

list = {
  "Cheese Burger" => 290,
  "Big Mac" => 300,
  "Mc Bacon" => 400,
  "Royal Cheese" => 130,
  "French fries" => 130,
  "Potatoes" => 130,
  "Coca" => 160,
  "Sprite" => 170 }

return list[burger] + list[side] + list[beverage]

end

poor_calories_counter("Cheese Burger", "Potatoes", "Coca")

def calories_counter(*orders)
  #TODO: return number of calories for a less constrained order
end
