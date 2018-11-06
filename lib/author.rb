class Author

  attr_accessor :name

  @@all = []

  def self.post_count
    @@all.size
  end


  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    self.posts << post
    @@all << post
    post.author = self
  end

  def add_post_by_title(title)
    add_post(Post.new(title))
  end
end
