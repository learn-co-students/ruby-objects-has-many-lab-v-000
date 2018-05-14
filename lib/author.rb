class Author 
  attr_accessor :name 
  @@post_count = 0
  def initialize(name = nil)
    @name = name 
    @posts = []
  end 
  def posts
    @posts
  end 
  def add_post(post)
    @posts << post
    post.author = self 
    @@post_count += 1
  end 
  def add_post_by_title(title)
    post_title = Post.new(title)
    post_title.author = self 
    self.posts << post_title
    @@post_count += 1 
  end 
  def self.post_count 
    @@post_count
  end 
    
  
end 