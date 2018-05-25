class Author 
  @@all_posts = 0 
  attr_accessor :name, :posts 
  
  def initialize(name) 
    @name = name 
    @posts = [] 
  end 
  
  
  def add_post(post)
    @posts << post 
    post.author = self 
    @@all_posts += 1 
  end 
  
  
  def add_post_by_title(post)
    post = Post.new(post)
    post.author = self 
    @posts << post 
    @@all_posts += 1 
  end 

  
  def self.post_count
    @@all_posts
  end 
  
end 