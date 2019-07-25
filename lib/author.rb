class Author

  attr_accessor :name, :post
@count = 1

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def posts
    @posts
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
  post.author = self
  end

def count
  @posts.count
end

def self.post_count
  @count += 1
end

end
