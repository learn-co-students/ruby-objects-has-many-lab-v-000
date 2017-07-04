# first attempt 6/25/17
# class Author
#   attr_accessor :name, :posts, :post_count
#   @@post_count = 0
#
#   def initialize(name)
#     @name = name
#     @posts = []
#   end
#
#   def add_post(post)
#     @posts << post
#     post.author = self
#     @@post_count += 1
#   end
#
#   def add_post_by_title(title)
#     post = Post.new(title)
#     add_post(post) #you don't need self here?
#   end
#
#   def self.post_count
#     @@post_count
#   end
# end

# second attempt 7/4/17

class Author
  attr_accessor :name, :posts
  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    self.add_post(new_post)
  end

  def self.post_count
    @@post_count
  end
end
