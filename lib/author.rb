

class Author
  attr_accessor :name, :posts
  @@posts = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @@posts << post
    @posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @@posts << post
    @posts << post
    post.author = self
  end

  def self.post_count
    @@posts.count
  end
end
