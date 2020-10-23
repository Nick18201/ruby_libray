def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
  array.select(&:even?)
  # array.select { |n| n.even? }
end

# even_arry = [1, 2, 3, 4, 5, 6]
# p even_numbers(even_arry)
# => [2, 4, 6]
