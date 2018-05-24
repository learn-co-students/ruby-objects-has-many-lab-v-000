class Author 
  
  @@post_counter = 0 
  attr_accessor :name, :posts, :title 
  
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
  def add_post(a_post)
    @posts << a_post 
    @@post_counter += 1 
    a_post.author = self 
  end   
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post 
    @@post_counter += 1 
    post.author = self 
  end
  
  def self.post_count 
    @@post_counter 
  end   
end   