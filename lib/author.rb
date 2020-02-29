class Author
  attr_accessor :name, :posts
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end

  def add_post_by_title(posttitle)
    newpost = Post.new(posttitle)
    newpost.author = self
    @@post_count += 1
    @posts << newpost
  end

  def self.post_count
    @@post_count
  end
end
