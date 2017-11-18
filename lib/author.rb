require 'pry'
require 'post.rb'
class Author

  attr_accessor :name, :posts
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    @@post_count += 1
    post.author = self
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    self.add_post(post)
    post.title
  end

  def self.post_count
    @@post_count
  end


end
