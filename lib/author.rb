class Author
    @@post_count = 1
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @@post_count += 1
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
      post.author = self
    end

  def self.post_count
    return @@post_count
  end

  end
