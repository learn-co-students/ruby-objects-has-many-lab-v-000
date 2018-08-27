
require 'pry'
class Author
  attr_accessor :name
  @@posts = []

  def initialize(name)
    @name = name
  end

  def posts
    @@posts
  end

  def add_post(post)
    @@posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
      post = Post.new(post_title)
      @@posts << post
      post.author = self
  end

  def self.post_count
    @@posts.length
  end

end
