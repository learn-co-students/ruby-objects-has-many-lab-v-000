
class Author
  attr_accessor :name, :posts, :post_count
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count +=1
  end
   
  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    @posts << post_title
    @@post_count +=1
    post_title.author = self
  end

  def self.post_count
    @@post_count
  end
end