require "pry"

class Author
 attr_accessor :name, :posts, :author, :title

  @@posts = []
  @@post_count = @@posts.length

 def self.post_count
   @@posts.length
 end

  def initialize(name)
    @name = name
    @posts = []
  end

  def name
    @name
  end

  def post
    @posts
  end

  def add_post(title)
    self.posts<< title
    self.post.last.author = @name
    title.author = self
    @@posts << post
  end

  def add_post_by_title (title)
    post = Post.new(title)
    self.posts << post
    post.author = self
    @@posts << post
  end

end
