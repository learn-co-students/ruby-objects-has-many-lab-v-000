class Author
  attr_accessor :name, :posts
  @@post_count = 0

  def initialize(author_name)
    @name = author_name
    @posts = []
  end

  def add_post(new_post)
    @posts << new_post
    new_post.author = self
    @@post_count += 1
  end

  def add_post_by_title(post_title)
      new_post = Post.new(post_title)
      @posts << new_post
      new_post.author = self
      @@post_count += 1
  end

  def self.post_count
    @@post_count
  end


end
