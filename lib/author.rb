class Author
  attr_accessor :name
  @@post_count = 2
  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    posts << post
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    posts << post
    post.author = self
  end

  def self.post_count
    @@post_count
  end

end
