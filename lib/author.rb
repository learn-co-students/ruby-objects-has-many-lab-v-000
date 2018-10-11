require 'pry'

class Author
  attr_accessor :name, :post, :author, :title
 
  @@posts = []
 
  def initialize(name)
    @name = name
    @post = post 
  end
 
  def add_post(post)
    @@posts << post
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @@posts << post
    post.author = self
    title
    #binding.pry
  end
 
  def posts
    @@posts
  end
  
  def self.post_count
    @@posts.count
  end

end