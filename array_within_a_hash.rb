# retrieve a value stored in an Array within a Hash?
DISHES_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Big Mac" => 540,
  "McChicken" => 350,
  "French Fries" => 230,
  "Salad" => 15,
  "Coca Cola" => 150,
  "Sprite" => 150
}

MEAL = {
  "Happy Meal" => ["Cheese Burger", "French Fries", "Coca Cola"],
  "Best Of Big Mac" => ["Big Mac", "French Fries", "Coca Cola"],
  "Best Of McChicken" => ["McChicken", "Salad", "Sprite"]
}

def poor_calories_counter(burger, side, beverage)
  DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end

p poor_calories_counter("Hamburger", "French Fries", "Sprite")

def calories_counter(orders)
  sum = 0
  orders.each do |order|
    if DISHES_CALORIES.key?(order)
      sum += DISHES_CALORIES[order]
    else
      MEAL[order].each { |meal_dishes| sum += DISHES_CALORIES[meal_dishes] }
    end
  end
  sum
end

p calories_counter("Happy Meal")
