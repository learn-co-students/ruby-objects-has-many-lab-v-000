require 'pry'
class Author
  attr_accessor :name, :author
  @@post_count = 0
  def initialize (name)
    @name = name
    @posts = []
    @author = author
  end
  def posts
    @posts
  end
  def author=(author)
    @author= author
  end
  def add_post(post)
    binding.pry
    @posts << post
    post.author= self#??
    @@post_count +=1
  end
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end
  def self.post_count
   @@post_count#Reads out content of the class variable
  end
end
