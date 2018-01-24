class Author
  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@post_count += 1
    post.author= self
  end

  def add_post_by_title(title)
    title = Post.new(title)
    @posts << title
    @@post_count += 1
    title.author= self
  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end

end
