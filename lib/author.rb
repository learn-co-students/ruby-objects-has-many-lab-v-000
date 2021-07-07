
class Author

  attr_accessor :name

  @@all_posts = []

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

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    post.author = self
    @posts << post
    @@all_posts << post
  end

  def self.post_count
    @@all_posts.count
  end

end
