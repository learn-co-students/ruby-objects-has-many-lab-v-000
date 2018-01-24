class Author

  @@post_count = 0

  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post
    add_all_posts
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
    add_all_posts
  end

  def add_all_posts
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end


end
