class Author 
  attr_accessor :posts, :name

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    posts << post

    @@post_count+= 1
  end

  def add_post_by_title(title)
    new_title = Post.new(title)
    add_post(new_title)
  end

  def self.post_count
    @@post_count
  end

end







































# class Author
#   attr_accessor :name, :post
  
#   @@post_count = 0

#   def initialize(name = nil)
#     @name = name
#     @posts = []
#   end

#   def add_post(post)
#     @posts << post
#     post.author = self
#     @@post_count += 1
#   end

#   def add_post_by_title(title)
#     post = Post.new(title)
#     @posts << post
#     post.author = self
#     @@post_count += 1
#   end

#   def self.post_count
#     @@post_count
#   end
  
#   def posts
#     @posts
#   end

# end