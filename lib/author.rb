class Author
  @@post_count = 0 

  attr_accessor :posts, :name 

  def initialize(name=nil)
    @posts = []
    self.name = name
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count +=1
  end

  def add_post_by_title(title)
    x = Post.new(title)
    add_post(x)
  end

  def self.post_count
    @@post_count
  end
end