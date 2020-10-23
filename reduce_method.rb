def concatenate(array)
  # TODO: Concatenate all strings given in the array.
  #       You should use of Enumerable#reduce
  array.reduce(:+)
end

conc = %w[bob jack rick morty]
p concatenate(conc)
# output => bobjackrickmorty
# :+ equal symbol + so it's a shortcut for sum, in this case it's used
# to concatenate all item of the array
# eg [1,2,3,4].inject( :+ )
# => 10
