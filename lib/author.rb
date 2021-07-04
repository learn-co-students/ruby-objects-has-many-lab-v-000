class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @posts = [] 
  end 
  
  def add_post(posts)
    @posts << posts  
    posts.author = self 
  end 
  
  def posts 
    @posts 
  end 
  
  def add_post_by_title(title)
    posts = Post.new(title)
    @posts << posts 
    posts.author = self 
  end 
  
  def self.post_count
    Post.all.count
  end 
  
end 