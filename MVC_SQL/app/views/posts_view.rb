class PostsView
  def display(posts)
    if posts.empty?
      puts "No posts"
    else
      posts.each_with_index do |post|
        puts "#{post.title} | #{post.url} | #{post.votes} (ID: #{post.id})"
      end
    end
  end

  def ask_user_for_post_attributes
    puts "Title for your new post?"
    print "> "
    title = gets.chomp

    puts "URL for your new post?"
    print "> "
    url = gets.chomp

    return {
      title: title,
      url:   url
    }
  end

  def better_ask_user_for_post_attributes
    # Voir https://github.com/piotrmurach/tty-prompt#213-value pour comprendre cet easter egg :)

    prompt = TTY::Prompt.new

    new_title = prompt.ask("New post title?", value: "Mon super titre")
    new_url   = prompt.ask("New post url?",   value: "Ma super url" )

    return {
      title: new_title,
      url:   new_url
    }
  end

  def ask_user_with_post_to_update
    puts "Which post to update ? (ID)"
    print "> "
    return gets.chomp.to_i
  end

  def ask_user_for_updated_attributes(post)
    puts "Current title: #{post.title}"
    puts "Updated title for your post?"
    print "> "
    title = gets.chomp

    puts "Current URL: #{post.url}"
    puts "Updated URL for your post?"
    print "> "
    url = gets.chomp

    return {
      title: title,
      url:   url
    }
  end

  def ask_user_with_post_to_destroy
    puts "Which post to destroy ? (ID)"
    print "> "
    return gets.chomp.to_i
  end

  def ask_user_with_post_to_upvote
    puts "Which post to upvote ? (ID)"
    print "> "
    return gets.chomp.to_i
  end
end
