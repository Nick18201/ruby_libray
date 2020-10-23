beatles = ["john", "ringo", "seb"]
#indexes        0      1        2


# READ
p beatles[2]
# => "seb"

# p beatles[3]
# => nil


# CREATE
# beatles.push("paul")
beatles << ["paul", "abc"]


# UPDATE
beatles[1] = "bob"


# DELETE
# beatles.delete("seb")
# or
beatles.delete_at(2)


# EACH
beatles.each do |beatle|
  puts "#{beatle} is in the Beatles"
end
# or
# beatles.each { |beatle| puts "#{beatle} is in the Beatles" }

beatles.each_with_index do |beatle, index|
  puts "#{index + 1} - #{beatle} is in the Beatles"
end
