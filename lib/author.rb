class Author

attr_accessor :name, :posts, 

  def initialize name
    @name = name
    @posts = []
  end

  def add_post post
    @posts << post
    post.author = self
  end

  def add_post_by_title post_title
    post = Post.new
    post.author = self
    post.title = post_title
    @posts << post
  end

  def post_count
    @@post_count = @posts.length
    @@post_count
  end
end