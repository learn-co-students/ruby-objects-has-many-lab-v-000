class Author
  attr_accessor :name, :posts
  @@post_count = 0;

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
    self.class.post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count
    @@post_count
  end

  private

  def self.post_count=(value)
    @@post_count = value
  end

end
