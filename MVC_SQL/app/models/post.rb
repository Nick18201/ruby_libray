class Post
  attr_reader :id
  attr_accessor :title, :votes, :url

  def initialize(attributes = {})
    @id    = attributes[:id]
    @title = attributes[:title]
    @url   = attributes[:url]
    @votes = attributes[:votes] || 0
  end

  def self.find(id)
    query = "SELECT * FROM posts WHERE id = ?"

    record = DB.execute(query, id).first

    if record.nil?
      return nil
    else
      return Post.new({
        id:    record[0],
        title: record[1],
        url:   record[2],
        votes: record[3]
      })
    end
  end

  def self.all
    query = "SELECT * FROM posts"
    rows = DB.execute(query)

    posts_objects = []

    rows.each do |row|
      posts_objects << Post.new({
        id:    row[0],
        title: row[1],
        url:   row[2],
        votes: row[3]
      })
    end

    return posts_objects
  end

  def destroy
    # 1. Executer une query SQL sur DB pour DELETE FROM posts;
    query = "DELETE FROM posts WHERE id = ?"
    DB.execute(query, @id)
  end

  def save
    if @id.nil?
      create
    else
      update
    end
  end

  def upvote
    @votes += 1
  end

  def upvote!
    @votes += 1
    save
  end

  private

  def create
    # 0. Crafter la query INSERT INTO
    query = "INSERT INTO posts (title, url, votes) VALUES (?, ?, ?)"
    # 1. Executer cette query
    DB.execute(query, @title, url, @votes)

    # 2. Assigner à mon objet Post le last ID utilisé par la DB
    @id = DB.last_insert_row_id
  end

  def update
    # 0. Crafter la query UPDATE
    query = "UPDATE posts SET title = ?, url = ?, votes = ? WHERE id = ?"
    # 1. Executer cette query
    DB.execute(query, @title, url, @votes, @id)
  end
end
