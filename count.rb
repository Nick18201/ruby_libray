fruits = ["orange", "banane", "ananas", "mangue", "apple"]

# OUTPUT
# Le nombre de fruits de mon array qui commencent par "a"
# => Le nombre de fruits commençant par 'a' est : 2

counter = 0

fruits.each do |fruit|
  if fruit.start_with?("a")
    counter += 1
    # puts "Mon fruit #{fruit} commence bien par la lettre 'a'"
  # else
  #   puts "Mon fruit #{fruit} ne commence pas par la lettre 'a'"
  end
end

puts "Le nombre de fruits commençant par 'a' est : #{counter}"

counter_with_mystery_method = fruits.count do |fruit|
  fruit.start_with?("a")
end
puts "Le nombre de fruits commençant par 'a' est : #{counter_with_mystery_method}"
