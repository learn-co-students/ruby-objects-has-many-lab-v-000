class Author

  attr_accessor :name
  attr_reader :posts

  @@post_count = 0

  def self.post_count
    @@post_count
  end

  def initialize(author_name)
    @name = author_name
    @posts = []
  end

  def add_post(new_post)
    @posts << new_post
    new_post.author = self
    @@post_count += 1
  end

  def add_post_by_title(new_post)
    new_post = Post.new(new_post)
    add_post(new_post)
  end

end