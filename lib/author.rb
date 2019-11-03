class Author
  attr_accessor :name, :post

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(post)
    post = Post.new(post)
    self.posts << post
    @@post_count += 1
    post.author = self
  end

  def self.post_count
    @@post_count
  end

end
