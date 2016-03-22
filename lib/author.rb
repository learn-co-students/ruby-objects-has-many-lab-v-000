require 'pry'
class Author
  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name, posts = [])
    @name = name
    @posts = []
  end

  def add_post(title)
    @@post_count += 1
    @posts << title
    title.author = self
  end

  def add_post_by_title(post_title)
    @@post_count += 1
    new_post = Post.new(post_title)
    @posts << new_post
    new_post.author = self
  end

  def self.post_count
    @@post_count
  end
end
