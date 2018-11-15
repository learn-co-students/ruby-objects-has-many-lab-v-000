class Author

  @@posts = []
  attr_accessor :name, :post

  def initialize(name)
    @name = name
  end

  def posts
    @@posts
  end

  def add_post(post)
    @@posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @@posts << post
    post.author = self
  end

  def self.post_count
    @@posts.length
  end

end
