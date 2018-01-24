class Author
  attr_accessor :name, :posts
  @@authors = []
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
    @@authors << self
  end

  def add_post(post)
    self.posts << post
    post.author = self
  end

  def add_post_by_title(name)
    post = Post.new(name)
    add_post(post)
  end

  def self.post_count
    @@authors.map{|author| author.posts.count}.reduce(:+)
  end
end
