MENU = {
  'Hamburger' => 250,
  'Chesse Burger' => 300,
  'Big Mac' => 540,
  'McChicken' => 350,
  'French Fries' => 230,
  'Salad' => 15,
  'Coca Cola' => 150,
  'Sprite' => 150
}

def poor_calories_counter(burger, side, beverage)
  sum_of_calories = MENU.fetch_values(burger.to_s, side.to_s, beverage.to_s)
  sum_of_calories.sum
end

# fetch_values(*args) is public method
# Returns an array containing the values associated with the given keys but
# also raises KeyError when one of keys can’t be found.
# Also see Hash #values_at and Hash#fetch.

# h = { "cat" => "feline", "dog" => "canine", "cow" => "bovine" }

# h.fetch_values("cow", "cat")                   #=> ["bovine", "feline"]
# h.fetch_values("cow", "bird")                  # raises KeyError
# h.fetch_values("cow", "bird") { |k| k.upcase } #=> ["bovine", "BIRD"]

# p poor_calories_counter("McChicken", "French Fries", "Sprite")
# output => return 730
# payments.sum { |p| p.price * p.tax_rate }
# payments.sum(&:price)
