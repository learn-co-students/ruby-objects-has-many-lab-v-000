

class Author 
  
  attr_accessor :name
  
  @@posts = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post_instance)
    post_instance.author = self
    @posts << post_instance
    @@posts += 1
  end 
  
  def add_post_by_title(title)
    post_instance = Post.new(title)
    post_instance.author = self
    @posts << post_instance
    @@posts += 1
  end 
  
  def posts 
    @posts 
  end
  
  def self.post_count
    @@posts
  end 
  
end 