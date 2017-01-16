class Author
  attr_accessor :name, :posts
  @@post_count = 0

  def initialize(name = nil)
    @name = name
    @posts = []
  end# of initialize
  
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1 
  end# of add_post

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self 
    @posts << post 
    @@post_count += 1
  end# of add_post_by_title

  def self.post_count
    @@post_count
  end# of post_count

end# of class