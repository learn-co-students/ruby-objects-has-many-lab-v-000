class Author
  attr_accessor :name, :post, :author, :title
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(new_post)
    @posts << new_post
    new_post.author = self
    @@post_count += 1
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    @@post_count += 1
    self.posts << new_post
    new_post.author = self
  end

  def self.post_count
    @@post_count
  end

end
