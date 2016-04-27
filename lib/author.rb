class Author
  attr_accessor :name, :title, :author

  @@all_posts = []
  @@post_count = @@all_posts.size

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@all_posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@all_posts << post
  end

  def self.post_count
    @@all_posts.size
  end

end
