def sorted_pairs(array)
  result = []
  # TODO: Reorganize an array into slices of n elements, and sort each slice alphabetically.
  #       You should use of Enumerable#each_slice
  array.each_slice(2) { |s| result << s.sort }
  result
end

# sorted = %w[g d s r w u]
# p sorted_pairs(sorted)
# output =>  %W[d g] %W[r s] %W[u w]
