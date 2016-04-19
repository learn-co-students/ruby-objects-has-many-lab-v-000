class Author
  attr_accessor :name, :posts
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def post_count_increase
    @@post_count += 1
  end

  def posts
    @posts
  end

  def add_post(post)
    posts << post
    post.author = self
    post_count_increase
  end

  def add_post_by_title(title)
    title = Post.new(title)
    posts << title
    title.author = self
    post_count_increase
  end

  def self.post_count
    @@post_count
  end

end