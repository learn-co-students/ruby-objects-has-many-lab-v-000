class Author
  attr_accessor :name, :posts
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post_a)
    post_a.author = self
    @posts << post_a
  end
  
  def add_post_by_title(title)
    post_a = Post.new(title)
    post_a.author = self
    @posts << post_a
  end
  
  def self.post_count
    Post.all.count
  end
  
end