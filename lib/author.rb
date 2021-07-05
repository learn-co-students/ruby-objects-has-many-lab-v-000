class Author 
  @@all_posts = 0 
  attr_accessor :name 
  def initialize(name)
    @name = name 
    @posts = []
  end 
    
  def add_post(post)
    @posts << post 
    post.author = self
    @@all_posts += 1 
  end 
    
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post 
    post.author = self
    @@all_posts += 1 
  end 
  
  def posts 
    @posts
  end 
  
  def self.post_count
    @@all_posts
  end 
end 