# Eg 1)

def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
  array.select(&:even?)
  # array.select { |n| n.even? }
end

# even_arry = [1, 2, 3, 4, 5, 6]
# p even_numbers(even_arry)
# => [2, 4, 6]

###############################################################################

# Eg 2)

fruits = ["orange", "banane", "ananas", "mangue", "apple"]


# OUTPUT
# Les éléments qui commencent par la lettre 'a' sont
# ['ananas', 'apple']

fruits_starting_with_a = []

fruits.each do |fruit|
  # p fruit
  if fruit.start_with?('a')
    fruits_starting_with_a << fruit
  end
end

puts "Les éléments qui commencent par la lettre 'a' sont: #{fruits_starting_with_a}"

fruits_starting_with_a_with_select = fruits.select do |fruit|
  fruit.start_with?('a')
end

puts "Les éléments qui commencent par la lettre 'a' sont: #{fruits_starting_with_a_with_select}"
