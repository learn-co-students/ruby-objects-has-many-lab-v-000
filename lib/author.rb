class Author
  attr_accessor :name
  attr_reader :posts
  @@posts = []
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@posts << post
  end

  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self
    @posts << title
    @@posts << title
  end

  def self.post_count
    @@posts.count
  end
end
