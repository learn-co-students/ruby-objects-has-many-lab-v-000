class Author
  attr_accessor :name, :posts

  @@total_posts = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@total_posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    @@total_posts << post
    post.author = self
  end

  def self.total_posts
    @@total_posts
  end

  def self.post_count
    self.total_posts.length
  end
end
