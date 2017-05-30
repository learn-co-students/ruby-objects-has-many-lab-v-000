class Author
  attr_accessor :name, :posts, :title
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
      @@post_count += 1
      self.posts << post
      post.author = self
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

  def self.post_count
    @@post_count
  end

end
