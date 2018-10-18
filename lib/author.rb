class Author
  attr_accessor :name, :post
  @@posts = []
  def initialize(name)
    @name = name
    @post = post
  end
  
  def posts
    @@posts
  end
  
  def add_post(post)
    @@posts << post
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @@posts << post
    post.author = self
  end
  
  def self.post_count
    Post.all.length
  end
end
