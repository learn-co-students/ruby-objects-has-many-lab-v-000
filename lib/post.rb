require 'pry'

class Post 
  attr_accessor :author, :title
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end 
  
 def add_post(a_post)
    @posts.push(a_post)
    a_post.author = self
    @@post_counter += 1
    # @@all << Post.new(title)
  end

  def self.all
    @@all
  end
  
  def author_name
    author ? author.name : nil
  end

end 