class Author

  attr_accessor :name, :posts

  @@posts = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@posts << post
    post.author = self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    add_post(title)
  end

  def self.post_count
    @@posts.count
  end

end
