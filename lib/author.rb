class Author
  attr_accessor :name, :posts

  @@total_posts = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@total_posts += 1
  end

  def add_post_by_title(post)
    new_post = Post.new(post)
    new_post.author = self
    posts << new_post
    @@total_posts += 1
    new_post
  end

  def self.post_count
    @@total_posts
  end
end
