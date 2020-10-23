require 'open-uri'
require 'json'
require 'time'

def generate_grid(grid_size)
  # TODO: generate random grid of letters
  # generate an array filled with letters, depending on grid_size
  # random_letter = ("a".."z").each { |letter| p letter }
  # grid_array << random_letter * grid_size
  range = ('A'..'Z').to_a
  Array.new(grid_size) { range.sample }
end

def in_dictionnary?(attempt)
  url = "https://wagon-dictionary.herokuapp.com/#{attempt}"
  attempt_serialized = open(url).read
  attempt_parsed = JSON.parse(attempt_serialized)
  attempt_parsed["found"]
end

def in_grid?(attempt, grid)
  # cut the attempt into seprate letters in an array
  # compare if the array match with generate_grid array
  attempt = attempt.upcase.split('')
  # ["T", "R", "U", "C", "M", "U", "C", "H"]
  attempt.all? { |letter| attempt.count(letter) <= grid.count(letter) }
end

def run_game(attempt, grid, start_time, end_time)
  # TODO: runs the game and return detailed hash of result (with `:score`, `:message` and `:time` keys)
  # should return a detailed hash of result (with `:score`, `:message` and `:time`)
  # should compute higher score for longer word
  # should compute higher score for quicker answer
  # should allow success when answer has repetitive letters
  # should build a custom messages for a correct word
  result = { score: 0, time: end_time - start_time }
  # result = {}
  # result[:time] = end_time - start_time
  if in_grid?(attempt, grid) == false
    #   result[:score] = 0
    result[:message] = "Not in the grid"
  elsif in_dictionnary?(attempt) == false
    #   result[:score] = 0
    result[:message] = "Not an English word"
  else
    result[:score] = attempt.size - result[:time] + 100
    result[:message] = "Well done!"
  end
  result
end
