require "pry"
class Author 
  
  attr_accessor :name, :posts 
  
  @@all = []
  @@post_count = 0
  
  def initialize(name)
    @name = name 
    @posts = []
    @@all << self
  end
  

  
  def posts
    @posts
  end
  
  def add_post(single_post)
    @posts << single_post
    single_post.author = self
  end 
  
  def add_post_by_title(post_title)
    single_post = Post.new(post_title) 
    @posts << single_post
    single_post.author = self
  end
  
   def self.all
     @@all
   end
   
   def self.post_count
     self.all.each do |author| 
      @@post_count += author.posts.count
      end
    @@post_count
   end
   
end