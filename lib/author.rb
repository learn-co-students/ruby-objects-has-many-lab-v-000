class Author 
  attr_accessor :name, :posts
  
  @@post_count = 0 
  
  def initialize(name = "", posts = [])
    @name = name 
    @posts = posts
  end 
  
  def name 
    @name 
  end 
  
  def posts 
    @posts 
  end 
  
  def add_post(post)
    @posts << post 
    @@post_count = @@post_count + 1
    post.author = self
    post
  end 
  
  def add_post_by_title(title) 
    new_post = Post.new(title)
    @posts << new_post
    @@post_count = @@post_count + 1
    new_post.author = self 
    new_post
  end 
  
  
  def self.post_count 
    @@post_count
  end 
  
end 