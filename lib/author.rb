class Author
  attr_accessor :name

  def initialize(name)
    self.name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author=self
    self.posts<<post
  end

  def add_post_by_title(title)
    self.add_post(Post.new(title))
  end

  def self.post_count
    Post.all.count
  end

end
