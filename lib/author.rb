require 'pry'

class Author
  attr_reader :name
  attr_accessor :posts

  def initialize(name)
    @name  = name
    @posts = []
  end

  def add_post(new_post)
    @posts << new_post
    new_post.author = self
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts << new_post
  end

  def self.post_count
    Post.all.length
  end
end
