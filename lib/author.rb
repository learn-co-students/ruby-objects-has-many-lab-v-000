class Author
  attr_accessor :name, :title
  attr_reader :posts
  @@post_count = 0

  def initialize(name)
    @name = name
    @title = title
    @posts = []
  end

  def add_post(post)
    @@post_count +=1
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
    post
  end

  def post_count
    self.posts.size
  end

  def self.post_count
    @@post_count
  end
  
end
