class Author
  attr_accessor :name, :title, :genre, :author, :posts
  @@post_count = 0

  def initialize(name)
      @name = name
      @posts = []
  end
  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @@post_count +=1
    @posts << post
  end
  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end
  def self.post_count
    @@post_count
  end
end
