require "pry"

class Author

  attr_accessor :name, :posts

  @@post_count = 0

  def self.total_posts
    @@post_count
  end

  def initialize(name)
    @name = name
    @posts = []

  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
    @@post_count += 1
  end

  def self.post_count
    self.total_posts
  end

  

end
