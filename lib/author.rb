class Author
  attr_accessor :name, :posts, :author
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(post)
    title = Post.new(post)
    self.add_post(title)
    title
  end

  def self.post_count
    @@post_count
  end

end
