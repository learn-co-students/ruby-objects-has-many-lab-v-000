class Author
  attr_accessor :name
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(blog_post)
    @posts << blog_post
    @@post_count += 1
    blog_post.author = self
  end
  
  def posts
    @posts
  end
  
  def self.post_count
    @@post_count
  end
  
  def add_post_by_title(post_title)
    blog_post = Post.new(post_title)
    add_post(blog_post)
  end
end