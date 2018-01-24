class Author
  
  attr_accessor :name
  
  @@posts = []
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    @posts
  end
  
  def add_post(post)
    @posts << post
    @@posts << post
    post.author = self
  end
  
  def add_post_by_title(name)
    new_title = Post.new(name)
    @posts << new_title
    @@posts << new_title
    new_title.author = self
  end
  
  def self.post_count
    @@post_count =  @@posts.size
  end
  
end


  
  
    
  
  
  
  
  