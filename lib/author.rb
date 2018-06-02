class Author 
  attr_accessor :name, :post 
  
  def initialize(name)
    @name = name 
    @posts = []
end 

  def posts 
    @posts 
  end 
  
  def add_post(post)
    post.author = self 
    @posts<<post
  end 
  
  def add_post_by_title(title)
   name = Post.new(title)
   name.author = self
   @posts<<name
  end 
  
  def self.post_count
    Post.all.count 
  end 
  


end 
