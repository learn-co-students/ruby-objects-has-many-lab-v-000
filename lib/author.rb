class Author
  attr_accessor :name, :author
  attr_reader :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(post)
    post = Post.new(post)
    post.author = self
    @posts << post
  end

  def self.posts
    @posts
  end

  def self.post_count
    Post.all.count
  end

end
