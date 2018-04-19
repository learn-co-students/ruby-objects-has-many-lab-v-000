class Author
  attr_accessor :name, :posts, :post_name

  @@post_count = 0

  def initialize(name)
    @name = name
    @post_name = post_name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
    post
  end

  def add_post_by_title(post_name)
      post = Post.new(post_name)
      @posts << post
      @@post_count += 1
      post.author = self
      post
    end

  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end

end
