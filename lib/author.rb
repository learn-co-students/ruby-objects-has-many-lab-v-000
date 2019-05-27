require 'pry'

class Author

attr_accessor :name

@@all = [] #=> allows for storing information in empty array

def initialize(name=nil) #=> initializes name and creates instance of variable
  @name = name
  @@all << self
end

def self.all #=>creates instance of variable
@@all
end

def add_post(post)
  post.author = self
end

def add_post_by_title(title)
  post = Post.new(title)
  post.author = self
end

def posts
  Post.all.select{|post| post.author == self}
end

def self.post_count
  Post.all.count
end

end
