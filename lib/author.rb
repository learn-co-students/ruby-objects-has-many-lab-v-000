class Author
  attr_accessor :name, :posts

  @@posts = []

  def initialize(name)
    @name = name
    @posts = []
    @@posts += self.posts
  end

  def add_post(post)
    @posts << post
    @@posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end

  def self.post_count
    @@posts.length
  end
end
