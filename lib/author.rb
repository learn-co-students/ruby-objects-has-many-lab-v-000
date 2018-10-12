require 'pry'

class Author
  attr_accessor :name, :posts, :author, :title
 
  @@all = []
 
  def initialize(name)
    @name = name
    @posts = []
  end
 
  def add_post(post)
    @posts << post
    post.author = self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    title
  end
 
  def posts
    @posts
  end
  
  def self.post_count
    @posts.each do |x|
      if x == title 
        x.count 
      end 
    end 
  end
  
end