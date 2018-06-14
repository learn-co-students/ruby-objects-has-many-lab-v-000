class Author
  attr_accessor :name 
  
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post1)
    @posts << post1
    @@post_count += 1
    post1.author = self
  end
  
  def posts
    @posts
  end
  
  def add_post_by_title(name, genre = nil)
    post1 = Post.new(name, genre)
    @posts << post1
    @@post_count += 1
    post1.author = self
  end
  
  def self.post_count
    @@post_count
  end
  
end