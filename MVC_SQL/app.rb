require "sqlite3"
require 'tty-prompt'

# Instantiate a constant variable, DB, usable in all your files
dir = File.dirname(__FILE__)
DB = SQLite3::Database.new(File.join(dir, "db/posts.db"))

# Require all the ruby files you have created in `app`
Dir[File.join(dir, "app/**/*.rb")].each { |file| require file }

# Launch the app!
Router.new.better_run   # with TTY-prompt
# Router.new.run          # without TTY-prompt
