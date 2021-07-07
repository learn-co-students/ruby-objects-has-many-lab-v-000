class Author
  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @posts = []
    @name = name
  end

  def add_post(post)
    post.author = self
    self.posts << post
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    self.posts << post
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

  def posts
    @posts
  end

end