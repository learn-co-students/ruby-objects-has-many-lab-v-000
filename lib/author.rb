class Author
  attr_accessor :name, :genre, :posts, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @genre = genre
    @posts = []
  end

  def add_post (post)
    @post = post
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title (title)
    post = Post.new(title)
    @post = post
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

end
