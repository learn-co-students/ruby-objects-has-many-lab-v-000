class Author
  # class
  @@post_count = 0
  def self.post_count
    @@post_count
  end
  
  # instance
  attr_accessor :name, :posts
  # initialization
  def initialize(name)
    @name = name
    @posts = []
  end
  # instance methods
  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end
end