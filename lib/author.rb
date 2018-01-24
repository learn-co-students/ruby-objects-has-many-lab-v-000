class Author
  attr_accessor :name, :posts
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def self.post_count
    @@post_count
  end

  def add_post(post)
    post.author = self
    posts << post
    @@post_count += 1
  end

  def add_post_by_title(title)
    posts << Post.new(title)
    posts.last.author = self
    @@post_count += 1
  end
end
