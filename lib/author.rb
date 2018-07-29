class Author
  attr_accessor :name, :posts

  def initialize(name)
    self.name = name
    self.posts = []
  end

  def add_post(post)
    post.author = self
    self.posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    self.posts << post
  end

  def self.post_count
    Post.all.size
  end
end
