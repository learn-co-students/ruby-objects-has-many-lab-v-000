class Author
  attr_accessor :name, :genre, :posts
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts=(post)
    @posts << post
  end

  def add_post(post)
    self.posts = post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(post)
    p = Post.new(post)
    add_post(p)
  end

  def self.post_count
    @@post_count
  end
end
