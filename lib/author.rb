class Author
  attr_accessor :name
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
    if @posts.count > 0
      @@post_count += @posts.count
    end
    @@post_count
  end
  
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(post_name)
    post = Post.new(post_name)
    @posts << post
    post.author = self
    @@post_count += 1
  end
  
  def posts
    @posts
  end
  
  def self.post_count
    @@post_count
  end
  
end