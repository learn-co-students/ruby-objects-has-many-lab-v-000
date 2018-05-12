class Author
  attr_accessor :name, :genre
  @@post_count = 0
  def initialize(name)
    @name = name
    @genre = genre
    @posts = []
    @@post_count+=1
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count
    @@post_count
  end

end
