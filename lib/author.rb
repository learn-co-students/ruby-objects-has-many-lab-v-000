# Author "has many" songs 
# Song instance "belongs to" an artist
class Author 
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(new_post)
    @posts << new_post 
    new_post.author = self
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self 
    @posts << new_post
  end
  
  def self.post_count
    Post.all.count
  end
end