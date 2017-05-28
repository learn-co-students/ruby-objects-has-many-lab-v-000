class Author
  attr_accessor :name, :posts
  @@post_count = 0
  def initialize(name="")
    @posts = []
    @name = name
  end
  def add_post(post)
    post.author = self
    @@post_count += 1
    posts << post
  end
  def self.posts
    @@post_count
  end
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end
  def self.post_count
    self.posts
  end
  
end
