class Author
  attr_accessor :name
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def self.post_count
    @@post_count
  end

  def posts
    @posts
  end

  def add_post(new_post)
    new_post.author = self
    @posts.push(new_post)
    @@post_count += 1
  end

  def add_post_by_title(new_title)
    post = Post.new(new_title)
    post.author = self
    @posts.push(post)
    @@post_count += 1
  end
end
