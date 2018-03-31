class Author
      attr_accessor :name, :posts, :all
      
      @@post_count = []
  def initialize(name)
    @name = name
    @posts = []
  end  
    
  def add_post(post)
    @posts << post
    @@post_count << post
    post.author = self
  end
  
  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
    @posts << title
    @@post_count << title
  end
  
  def self.post_count
   @@post_count = @@post_count.length
  end
  
  
 
    
end