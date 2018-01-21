class Author
  attr_accessor :name
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post_obj)
    @@post_count += 1
    post_obj.author = self
    @posts << post_obj
  end

  def add_post_by_title(post_title)
    @@post_count += 1
    post = Post.new(post_title)
    post.author = self
    @posts << post 
  end

  def self.post_count
    @@post_count
  end
end
