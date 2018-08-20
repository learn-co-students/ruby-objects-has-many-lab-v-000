require 'pry'
class Author
  attr_accessor :title, :author, :name, :posts
  def initialize(name)
    @title = title
    @author = author
    @name = name
    @posts = []
  end
  def add_post(post)
    @posts << post
    post.author = self
  end
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end
  def self.post_count
    Post.all.count
  end
end