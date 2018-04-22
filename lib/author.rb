class Author
  attr_accessor :name, :posts
  
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(name)
    @posts << name
    @@post_count += 1
    name.author = self
    name
  end
  
  def add_post_by_title(name)
    title = Post.new(name)
    self.add_post(title)
    title
  end
  
  def self.post_count
    @@post_count
  end
 
end