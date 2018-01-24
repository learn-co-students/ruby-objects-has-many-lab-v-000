class Author
  attr_accessor :name
  @@post_count = 0

  def initialize(name)
    self.name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    self.add_post(Post.new(title))
  end

  def self.post_count
    @@post_count
  end

end
