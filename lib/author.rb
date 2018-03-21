class Author
  attr_accessor :name
  attr_accessor :posts  #plural
  @@post_count = 0  #total count amongst all authors

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    @@post_count += 1
    post.author = self
  end

  def self.post_count
    @@post_count
  end
end
