class Author
  attr_accessor :author, :name, :post_count, :posts, :post
  @@post_count = 0
  def initialize(name)
    @name = name
    @author = author
    @posts = []
  end
def add_post(post)
  @posts << post
  post.author = self
    if post.author = self
  @@post_count += 1
end
end
def add_post_by_title(title)
  post = Post.new(title)
  @posts << post
    post.author = self
    if post.author = self
    @@post_count += 1
end
end
def posts
  @posts
end
def self.post_count
  @@post_count
end
end
