class Author
  attr_accessor :name
  attr_reader :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(user_post)
    @posts << user_post
    user_post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    user_post = Post.new(title)
    @posts << user_post
    user_post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end
