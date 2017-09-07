class Author
  attr_accessor :name
  attr_reader :posts
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    add_to_post_count
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def add_to_post_count
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end
