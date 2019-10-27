class Author

  attr_accessor :name, :post

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @post = post
    @post.author = self
    @posts << @post
    @@post_count += 1
    @post
  end

  def add_post_by_title(title)
    @title = title
    @post = Post.new(title)
    @post.author = self
    @posts << @post
    @@post_count += 1
    @post
  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end

end
