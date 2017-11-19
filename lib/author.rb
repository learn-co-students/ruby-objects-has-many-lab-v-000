class Author
  attr_accessor :name
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self #setting author instance assoc to post from class Post = to this Author instance
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
