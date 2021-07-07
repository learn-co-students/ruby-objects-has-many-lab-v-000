class Author 
  @@post_count = 0 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
  def posts 
    @posts 
  end
  
  def add_post(new_post)
    @posts << new_post
    new_post.author = self
    @@post_count+=1
  end 
  
  def add_post_by_title(posts)
    posts = Post.new(posts) 
    @posts << posts
    posts.author = self 
    @@post_count+=1
  end
    
    def self.post_count 
      @@post_count
    end
    
end 