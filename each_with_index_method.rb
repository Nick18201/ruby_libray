# TODO: computes the sum of elements at odd indexes (1, 3, 5, 7, etc.)
#       You should use Enumerable#each_with_index
def sum_odd_indexed(array)
  sum = 0

  array.each_with_index do |item, index|
    if index.odd?
      p "#{index} => #{item}"
      sum += item.to_i
    end
  end

sum
end
