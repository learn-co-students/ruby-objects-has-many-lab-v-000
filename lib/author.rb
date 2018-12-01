require "pry"
class Author
  attr_accessor :name, :new_post
 
  def initialize(name)
    @name = name
    @posts = []
    #@posts << name
  end
  

  def add_post(new_post)
    @posts << new_post 
    new_post.author = self
    #binding.pry
  end 
  
  def add_post_by_title(name)
    new_post = Post.new(name)
    @posts << new_post
    new_post.author = self
  end
  
  def posts
    @posts
  end 
  
  def post_count
    @posts
    #binding.pry
  end 
  
  def self.post_count
    x = Post.all
    y = x.count
    y 
  end 
  
end