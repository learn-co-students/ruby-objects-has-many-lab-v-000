class Author
  attr_accessor :title, :name, :author, :posts
  @@posts = []
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@posts << posts
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    @@posts << posts
    post.author = self
  end

  def self.post_count
    @@post_count = @@posts.count
    @@post_count
  end
end
