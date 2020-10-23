require 'open-uri'
require 'nokogiri'

# PSEUDOCODE
# creer un Array vide OK
# stocker l'url OK
# ouvrir l'url OK
# lire les données OK
# chercher des selecteur CSS OK
# Stocker les données dans des hashs 1 film => 1 hash
# stocker les hashs dans un Array
# retourner notre Array de Hash

# card => .lister-list tr
# title => .titleColumn a
# year => .secondaryInfo
# rating => .imdbRating strong

def fetch_top_movies(number)
  best_movies = []
  # url = "https://www.imdb.com/chart/top"
  # html_file = open(url).read
  # enregistrer le HTML en local
  # curl https://www.imdb.com/chart/top > topmbd.html
  filepath  = "topimdb.html"
  html_file = File.read(filepath)
  html_doc  = Nokogiri::HTML(html_file)
  # p html_doc

  html_doc.search('.lister-list tr').first(number).each do |element|
    title  = element.search('.titleColumn a').text
    year   = element.search('.secondaryInfo').text.gsub(/[()]/, '').to_i
    rating = element.search('.imdbRating strong').text.to_f
    best_movies << { title: title, year: year, rating: rating }
  end
  best_movies
end

# puts fetch_top_movies(3)
