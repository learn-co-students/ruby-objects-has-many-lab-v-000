class Author 
  @@all = []
  attr_accessor :name, :posts 
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
  def add_post(post)
    @posts << post
    @@all << post 
    post.author = self
  end 
  
  def add_post_by_title(new_post)
    post = Post.new(new_post)
    @posts << post
    @@all << post 
    post.author = self 
  end 
  
  def self.post_count
    @@all.count 
  end 
end 