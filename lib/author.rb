class Author 
  attr_accessor :name, :title  
  
  def initialize(name)
    @name = name 
    @posts = []
  end
  
  def add_post(post)
    #post = Post.new(post)
    @posts << post
    post.author = self 
  end
  
  def add_post_by_title(post)
    post = Post.new(post)
    @posts << post 
    post.author = self 
  end
  
  def self.post_count
    Post.all_posts.count 
  end
  
  def posts 
    @posts
  end 
  
end 