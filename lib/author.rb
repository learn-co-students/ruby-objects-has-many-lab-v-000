class Author
  attr_accessor :name

  @@all_posts_all_authors = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    @@all_posts_all_authors << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    @@all_posts_all_authors << post
    post.author = self
  end

  def self.post_count
    @@post_count = @@all_posts_all_authors.length
    @@post_count
  end
end
