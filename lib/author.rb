class Author

  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @posts = []
    @name = name
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@post_count += 1
    @posts
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end

  def self.post_count
    @@post_count
  end
  
end