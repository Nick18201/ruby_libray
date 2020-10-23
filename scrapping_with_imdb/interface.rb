require_relative "scraper.rb"
# write a program which display the top N films on IMDB
# https://www.imdb.com/chart/top

# demander au user combien de film on va chercher
# Stock la reponse de l'utilisateur
# scrapper le top n de film
# afficher les films

# afficher
# - title => String
# - year => Integer
# - rating => Float

# un Array de Hash

# best_movies = [
#   {title: "Les évadés", year: 1994, rating: 9.2},
#   {title: "Le parrain", year: 1972, rating: 9.1},
#   {title: "Le parrain, 2ème partie", year: 1974, rating: 9.0}
# ]

puts "Hello ! Combien de film tu veux ?"
number = gets.chomp.to_i


best_movies = fetch_top_movies(number)

best_movies.each do |movie|
  # Les évadés, réalisé en 1994, avec une note de 9.2 / 10
  puts "#{movie[:title]}, réalisé en #{movie[:year]}, avec une note de #{movie[:rating]}/10"
end
