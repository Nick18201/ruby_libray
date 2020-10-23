def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  # if min > max return -1
  # "for" loop has similar functionality as while loop but with different
  # syntax. for loop is preferred when the number of times loop statements are
  # to be executed is known beforehand. It iterates over a specific range of
  # numbers. It is also known as Entry Controlled Loop because the condition
  # to be tested is present at the beginning of the loop body.
  #
  sum = 0

  return -1 if min > max

  for num in (min..max)
    sum += num
  end
  sum
end

def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  # The condition which is to be tested, given at the beginning of the loop and
  # all statements are executed until the given boolean condition satisfies.
  # When the condition becomes false, the control will be out from the while
  # loop. It is also known as Entry Controlled Loop because the condition to be
  # tested is present at the beginning of the loop body. So basically, while
  # loop is used when the number of iterations is not fixed in a program.
  sum = 0
  num = min

  return -1 if min > max

  while num <= max
    sum += num
    num += 1
  end
  sum
end
