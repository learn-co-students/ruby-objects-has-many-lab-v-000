class Author
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
  end

  def posts
    @@all
  end

  def add_post(post)
    @@all << post
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @@all << post
    post.author = self
  end

  def self.post_count
    @@all.length
  end

end
