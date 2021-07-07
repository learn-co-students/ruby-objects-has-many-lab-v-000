class Author

  attr_accessor :name
  @@post_counter = 0

  def initialize(name)
    @name = name
    @post = []
  end

  def add_post(post)
    @post << post
    post.author = self
    @@post_counter += 1
  end

  def posts
    @post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @post << post
    post.author = self
    @@post_counter += 1
  end

  def self.post_count
    @@post_counter
  end

end
