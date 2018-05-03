class Author
  attr_accessor :name, :posts

  @@posts = Array.new
  @@post_count

  def initialize(name)
    @name = name
    @posts = Array.new
  end

  def add_post(post)
    @posts << post
    @@posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
    @@posts << post
  end

  def self.post_count
    @@post_count = @@posts.count
  end


end
