require 'pry'
class Author

attr_accessor :name, :posts, :title, :author


  def initialize(name)
    @name = name
    @posts = []

  end

def posts
  @posts
end

def add_post(post)
  @posts << post
  post.author = self

end

def add_post_by_title(title)
  new_post = Post.new(title)
  new_post.author = self
  @posts << new_post
end

def self.post_count
array = Post.all
  array.length
end

end
