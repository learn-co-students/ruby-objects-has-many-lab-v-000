class Author  
  attr_accessor :name, :posts 
  @@t_posts = 0 
  
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
  def self.post_count
    @@t_posts
  end 
  
  def add_post(new_post)
    @posts << new_post
    new_post.author = self 
    @@t_posts += 1
  end 
  
  def add_post_by_title(title)
    new_post= Post.new(title)
    @posts << new_post 
    @@t_posts += 1
    new_post.author = self
    new_post 
  end 
  
  def posts 
    @posts 
  end 
end 