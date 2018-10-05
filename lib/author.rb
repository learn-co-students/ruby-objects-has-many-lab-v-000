class Author 
  
  attr_accessor :name, :posts  
  
  @@posts = []
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    @posts << post 
    post.author = self 
    @@posts << self 
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self 
    @@posts << self   
  end
  
  def posts
    @posts 
  end
  
  def self.post_count
    @@posts.length 
  end
  
end