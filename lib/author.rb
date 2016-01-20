class Author
  attr_accessor :name, :posts
  @@authors = []
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
    @@authors << self
  end

  def add_post(post)
    post.author = self
    @@post_count += 1
    @posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end

  def self.post_count
    @@post_count
  end
end