class Author

  @@post_count = 0

  attr_reader :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def add_post(post)
    post.author = self
    posts << post
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end
