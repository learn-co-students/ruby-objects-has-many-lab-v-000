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
    post.author= self
    post.title = post
    @@post_count +=1
  end
  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
    post.author = self
    post.title = post_title
    @@post_count+=1
  end
  def self.post_count
    @@post_count
  end
end
