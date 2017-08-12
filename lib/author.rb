require 'pry'

class Author
  @@post_count = 0
  attr_accessor :name
  def initialize(name)
    @name = name
    @posts = []
  end
  def posts
    @posts
  end
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(post_title)
    add_post(Post.new(post_title))
  end

  def self.post_count
    @@post_count
  end

  def author_name
    binding.pry
    self.author
  end
end
