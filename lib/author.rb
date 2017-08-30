class Author

  @@post_count = 0
  attr_accessor :name, :post

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    @posts << post_title
    post_title.author = self
    @@post_count += 1
  end

  def Author.post_count
    @@post_count
  end
end
