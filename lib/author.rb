class Author 
  attr_accessor :name
  
  @@post_count = 0 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts 
    @posts 
  end
  
  def add_post(post_title)
    @posts << post_title 
    post_title.author = self 
    @@post_count +=1 
  end
  
  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    @posts << new_post
    new_post.author = self
    @@post_count += 1
  end
  
  def self.post_count
    @@post_count
  end
  
end