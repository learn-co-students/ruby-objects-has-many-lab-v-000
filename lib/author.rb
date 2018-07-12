class Author
  attr_accessor :name, :posts, :author 
  
  @@post_count = 0 
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    @posts
  end
  
  def add_post(submit_post)
    @posts << submit_post
    submit_post.author = self
    @@post_count += 1 
  end
  
  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
    @posts << title
    @@post_count += 1 
  end
  
  def self.post_count
    @@post_count
  end
  
end