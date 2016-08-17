class Author

  @@post_count = 0

  attr_accessor :name
  attr_reader :posts

  def initialize(name)
    self.name = name
    @posts = [] 
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@post_count += 1
  end
  
  def add_post_by_title(name)
    new_post = Post.new(name)
    new_post.author = self
    @posts << new_post
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
  
  
end