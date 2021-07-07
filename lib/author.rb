require 'pry'
class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []

  end

  def add_post(post)
  #binding.pry
    post.author = self
    self.posts << post
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    add_post(post)
    post
  end

  def self.post_count
    counter = 0
    Post.all.each do |a|
    counter += 1 
    end
    counter
  end
end
