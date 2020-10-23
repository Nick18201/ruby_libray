def short_words(array, max_length)
  # TODO: Take an array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
  array.reject { |n| n.size > max_length }
end

# less_than = %w[bob jacques lfkjsfkljsdfkljd smdfksdmflk ffjfjf]
# p short_words(less_than, 5)
# output => [bob]
