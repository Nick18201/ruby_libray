# puts "Coucou"

# puts "Good bye"

students = []

if students.empty?
  # if condition is truthy, this code is executed
  puts "There is nothing in there"
end


if !students.empty?
  # code executed only if condition is falsy
  puts "There is something !"
end

unless students.empty?
  # code executed only if condition is falsy
  puts "There is something !"
end


# CAN YOU VOTE ?

# demander son age à l'utilisateur age
# vérifier si on a plus ou moins de 18 ans
# si plus
# peut voter

puts "Input your age"
print ">"

age = gets.chomp.to_i

if age >= 18
  puts "You can vote !"
else
  puts "You cannot vote... sorry"
end


# FLIP A COIN

# lancer la pièce <=> tirer au sort entre HEADS & TAILS
# user choisit HEADS ou TAILS

# si c'estok , afficher "win!", sinon "lose"

puts "Choose heads or tails..."
print "> "
choice = gets.chomp
result = ["heads", "tails"].sample

message = choice == result ? "you win !" : "you lose..."

puts message

# if choice == result
#   "you win !"
# else
#   "you lose..."
# end

#CASE FOR OLD SCHOOL INTERFACES

# 1. See all restaurants
# 2. Select one restaurant
# 3. Exit


# action = gets.chomp.to_i

# case action
# when 1
#   puts "All restaurants"
# when 2
#   puts "One specific restaurant"
# when 3
#   puts "Good bye"
# else
#   puts "Wrong action"
# end


# INLINE CONDITIONS
do_something if condition_is_true
do_something unless condition_is_true


def circle_area(radius)
  return 0 if radius < 0
  # if radius < 0
  #   return 0
  # end

  return radius * radius * 3.14
end

# # LOGICAL AND / OR

# #covid

if tested && !positive
  # code is executed only if BOTH conditions are truthy
  puts "You can attend Le Wagon"
end


if car || scooter
  # code is executed if ONE condition is truthy
  puts "You can go shopping"
end



# # WHILE

# # choisi un chiffre random entre 1 et 100
# # tant que l'utilisateur n'a pas trouvé
  # demander input utilisateur
  # comparer
  # si c'est plus => "too high"
  # si c'est moins => "too low"
  # sinon => "gagné"

price = rand(1..100)
running = true

while running
  puts "Pick a number"
  print "> "
  guess = gets.chomp.to_i

  if guess < price
    puts "too low"
  elsif guess > price
    puts "too high"
  else
    puts "Bingo !"
    running = false
  end
end

# until running
# end


# LOOPING WITH FOR

for number in [1, 2, 3, 4]
  puts number
end
