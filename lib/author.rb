class Author 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def posts 
    Post.all.select do |song|
      song.author == self 
  end
  end 
  
  def add_post(post) 
    post.author = self 
  end 
  
  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self 
  end 
  
  def self.post_count 
    Post.all.count 
  end 
    
  
  def self.all 
   @@all 
  end 

end 