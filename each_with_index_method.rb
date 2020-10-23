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

fruits = ["orange", "banane", "ananas", "mangue"]

# OUTPUT
# Mon fruit #1 est : orange
# Mon fruit #2 est : banane
# ...

fruits.each_with_index do |fruit, counter|
  puts "Mon fruit ##{counter + 1} est : #{fruit}"
end


# counter = 1
# for fruit in fruits
#   puts "Mon fruit ##{counter} est : #{fruit}"
#   counter += 1
# end
