class Author
  @@all = []
  attr_accessor :name, :posts

  def self.post_count
    @@all.length
  end

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    @@all << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    @@all << post
    post.author = self
  end
end
