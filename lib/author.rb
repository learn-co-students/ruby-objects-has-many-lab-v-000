class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

@@post_count = 0

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(post_name)
    post = Post.new(post_name)
    add_post(post)
  end

  def self.post_count
    @@post_count
  end
end
