require 'pry'

class Author
  attr_accessor :name
  @@post_count = 0

  def initialize(name = nil)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post = nil)
    @posts << post
    @@post_count += 1
    post.author = self
  end

  def add_post_by_title(post = nil)
    post = Post.new(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end

  def self.post_count
    @@post_count
  end

end
