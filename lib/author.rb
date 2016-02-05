require 'pry'

class Author
  attr_accessor :author

  @@post_count = 0

  def initialize(author)
    @author = author
    @posts = []
  end

  def name
    @author
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(post)
    title = Post.new(post)
    @posts << title
    title.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end
