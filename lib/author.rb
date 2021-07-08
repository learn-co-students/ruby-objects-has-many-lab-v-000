require 'pry'

class Author
  attr_accessor :name, :posts
  @@all=[]
  
  def initialize(name)
    @name=name
    @posts=[]
  end
 
  def add_post(new_post)
    @posts << new_post
    new_post.author=self
    @@all << new_post
  end
  
  def add_post_by_title(title)
    post=Post.new(title)
    @posts << post
    post.author = self
    post.title = title
    @@all << post
  end
  
  def posts
    @posts
  end
  
  def self.post_count
    @@all.count
  end
  
end