class Author
  require 'pry'
  
  attr_accessor :name, :posts
  
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post_title)
    @posts << post_title
    post_title.author = self
    @@post_count += 1
  end
  
  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    @posts << post_title
    post_title.author = self
    @@post_count += 1
  end
  
  def self.post_count
    @@post_count
  end
  
end