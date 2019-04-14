class Author

  attr_accessor :name, :title, :posts

  @@post_count = 0

  def initialize(name)
    @posts = []
    @name = name
  end

  def add_post(new_post)
    @posts << new_post
    new_post.author = self
    @@post_count += 1
  end

  def add_post_by_title(t)
    t = Post.new(t)
    @posts << t
    t.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

end
