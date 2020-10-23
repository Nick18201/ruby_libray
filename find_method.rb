def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find
  array.find { |i| i < limit }
end

# first_und = [ 14, 33, 806, 3, 23, 4]
# p first_under(first_und, 4)
# output => 3
