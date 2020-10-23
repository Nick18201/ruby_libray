def better_refrain(lyrics, options = { vibrato: 0, number_of_times: 1, strong: false })
  # TODO: implement this better version which breaks argument order dependency
  song_refrain = []
  lyrics += lyrics[lyrics.size - 1] * options[:vibrato]
  lyrics.upcase! if options[:strong]

  options[:number_of_times].times do
    song_refrain << lyrics
  end

  song_refrain.join(" ")
end
