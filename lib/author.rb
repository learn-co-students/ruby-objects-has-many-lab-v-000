class Author

  @@post_count = 0

  attr_accessor :posts, :name, :author

  def initialize(name)
    @posts = []
    @name = name
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    p = Post.new(title)
    p.author = self
    @posts << p
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

end
