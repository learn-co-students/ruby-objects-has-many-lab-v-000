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
  
  def self.post_count
  @@post_count
end 
  
  def add_post(post_)
    @posts << post_
    post_.author = self
    @@post_count += 1
  end 
  
  def add_post_by_title(post_title)
  post_ = Post.new(post_title)
  @posts << post_
  post_.author = self
  @@post_count += 1
  
end 

end 
