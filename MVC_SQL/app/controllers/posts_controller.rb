class PostsController
  def initialize
    @view = PostsView.new
  end

  ################################################################
  # BEWARE: you MUST NOT use the global variable DB in this file #
  ################################################################

  def index
    # ANCIEN TESTAMENT
    # 1. Récupérer tous posts grâce au repo
    # posts = post_repository.all
    # 2. Passer ces posts à la view pour les afficher

    # NOUVEAU TESTAMENT
    # 1. Récupérer tous posts grâce au modèle directement
    posts = Post.all
    # 2. Passer ces posts à la view pour les afficher
    @view.display(posts)
  end

  def create
    post_attributes = @view.better_ask_user_for_post_attributes # { title, url }
    post = Post.new(post_attributes)

    # ANCIEN TESTAMENT
    # post_repository.add(post)

    # NOUVEAU TESTAMENT
    post.save
  end

  def update
    # 1. Afficher la liste des posts au user
    posts = Post.all
    @view.display(posts)

    # 2. Lui demander de choisir lequel mettre à jour (via ID)
    post_id = @view.ask_user_with_post_to_update
    post    = Post.find(post_id)

    # 3. Lui demander les nouvelles infos du post
    updated_attributes = @view.ask_user_for_updated_attributes(post)

    # 4. Mettre à jour le post
    post.title = updated_attributes[:title]
    post.url   = updated_attributes[:url]
    # 5. Sauver le post
    post.save
  end

  def destroy
    # 1. Afficher la liste des posts au user
    posts = Post.all
    @view.display(posts)

    # 2. Lui demander de choisir lequel détruire (via ID)
    post_id = @view.ask_user_with_post_to_destroy
    post    = Post.find(post_id)

    # 3. Détruire le post
    post.destroy
  end

  def upvote
    # 1. Afficher la liste des posts au user
    posts = Post.all
    @view.display(posts)

    # 2. Lui demander de choisir lequel upvote (via ID)
    post_id = @view.ask_user_with_post_to_upvote
    post    = Post.find(post_id)

    # 3. Upvote le post
    post.upvote
    post.save

    # OU
    # post.upvote!
  end
end
