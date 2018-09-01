class Author
  attr_accessor :name, :posts
  ALL_POSTS = []

  def initialize(name = nil)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    ALL_POSTS << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end

  def self.post_count
    ALL_POSTS.length
  end
end
