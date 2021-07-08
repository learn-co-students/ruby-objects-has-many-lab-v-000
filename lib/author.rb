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
  
  def add_post(pos)
    @posts << pos 
    pos.author = self 
    @@post_count += 1 
  end 
  
  def add_post_by_title(title)
    pos = Post.new(title)
    @posts << pos 
    pos.author = self 
    @@post_count += 1 
  end 
  
  def self.post_count 
    @@post_count 
  end 
end 