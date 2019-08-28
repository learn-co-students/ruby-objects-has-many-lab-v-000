class Author
  attr_accessor :name, :posts
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(title)
    @posts << title
    title.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    title = Post.new(title)
    add_post(title)
    title
  end

  def self.post_count
    @@post_count
  end

end