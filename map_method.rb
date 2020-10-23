def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  array.map { |string| "#{string}!" }
end

# mapped = %w[bob dhd ssss eerere]
# p add_bang(mapped)
# output => bob! ....
