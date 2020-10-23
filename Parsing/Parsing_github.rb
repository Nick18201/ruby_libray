# open-uri & json font partie de la Librairy Ruby, il faut donc les require
require "open-uri"
require "json"

def get_infos_from_github(usernames)
  # Usernames est array, je vais donc m'intéresser à chaque valeur séparemment
  data = usernames.map do |username|

    # 1. Récupérer la data depuis l'url
    raw_data    = open("https://api.github.com/users/#{username}").read

    # 2. Transformer en hash pour pouvoir l'utiliser
    parsed_data = JSON.parse(raw_data)

    # 3. Extraire les infos qui nous intéressent
    {
      profile_picture: parsed_data["avatar_url"],
      company:         parsed_data["company"],
      followers:       parsed_data["followers"].to_i
    }
  end

  puts "Data imported!"

  # Sans cette ligne, puts va être return et donc ma méthode aurait return nil
  return data

# Vous n'aurez probablement jamais à faire ça tout au long du bootcamp.
# C'est juste pour vos montrer qu'on peut rescue des types d'erreurs
# pour que la méthode ne plante pas quand elles se produisent
rescue OpenURI::HTTPError
  puts "404 - Mauvais URL"
end

## Before
# p get_infos_from_github("nathanmenard")
# => {:profile_picture=>"https://avatars0.githubusercontent.com/u/49595305?v=4", :company=>"Drakkr", :followers=>2}

teachers = %w[pagehey nathanmenard cveneziani]
p get_infos_from_github(teachers)
# => [{:profile_picture=>"https://avatars1.githubusercontent.com/u/39967933?v=4", :company=>nil, :followers=>4}, {:profile_picture=>"https://avatars0.githubusercontent.com/u/49595305?v=4", :company=>"Drakkr", :followers=>2}, {:profile_picture=>"https://avatars2.githubusercontent.com/u/50518?v=4", :company=>"Cecilitse", :followers=>299}]
