require 'date'

def days_until_xmas
  # TODO : Return number of days from today until xmas
  # PSEUDO CODE
  # Define today's date and store it
  today = Date.today
  # Define xmas's date and store it
  xmas = Date.new(2020, 12, 25)
  # Substract xmas date and today date
  # Return the value
  return (xmas - today).to_i
end

# MINI TEST
puts days_until_xmas.class # Integer
puts days_until_xmas # 73

# OTHER CASES TO CONSIDER
# 1) The date today is between 26/12/2020 and 31/12/2020
# 2) The date today is after 31/12/2020 => next years
