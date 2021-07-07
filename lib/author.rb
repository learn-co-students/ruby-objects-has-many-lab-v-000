class Author

  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(author_name)
    @name = author_name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author = self
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end

  def self.post_count
    @@post_count
  end
end
