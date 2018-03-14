class Author
  attr_accessor :name, :posts
  @@all = []
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(name)
    post = Post.new(name)
    add_post(post)
  end

  def self.all
    @@all
  end

  def self.post_count
    @@post_count
  end
end
