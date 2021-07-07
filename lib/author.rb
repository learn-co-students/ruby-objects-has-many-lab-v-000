class Author
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @posts = []
  end
  def posts
    return @posts
  end
  def add_post(post)
    @posts << post
    post.author = self
    @@all << post
  end
  def add_post_by_title(name)
    post = Post.new(name)
    @posts << post
    post.author = self
    @@all << post
  end
  def self.post_count
    return @@all.length
  end
end
