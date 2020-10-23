# Eg 1)
def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  array.map { |string| "#{string}!" }
end

# mapped = %w[bob dhd ssss eerere]
# p add_bang(mapped)
# output => bob! ....
###############################################################################

# eg 2)
fruits = ["orange", "banane", "ananas", "mangue", "apple"]
# OUTPUT ["Orange !", "Banane !", "Ananas !", "Mangue !", "Apple !"]

transformed_fruits = []

transformed_fruits_with_map = fruits.map do |fruit|

  # FruitsAPI
  # url = "fruitsapi.com/#{fruit}"
  # data = open(url)
  # data.history

  puts "We are about to transform our fruit: #{fruit}"

  "#{fruit.capitalize} !"
end

p transformed_fruits_with_map # => ["Orange !", "Banane !", "Ananas !", "Mangue !", "Apple !"]
