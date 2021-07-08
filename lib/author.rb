class Author
  attr_accessor :name
  def initialize(name)
    @name = name
    @posts = []
  end
  @@posts = []
  @@post_count = 0
  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    @@posts << post
    post.author = self
  end

  def add_post_by_title(post)
    post_new = Post.new(post)
    post_new.author = self
    @posts << post_new
    @@posts << post_new
  end

  def self.post_count
    @@posts.count
  end
end