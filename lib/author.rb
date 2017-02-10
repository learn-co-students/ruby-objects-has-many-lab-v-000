class Author
  attr_accessor :name

  @@post_count = 0

  def intialize(name)
    @name=name
    @posts=[]
  end

  def add_post(name)
    @posts << name
    name.author = self
    @@post_count += 1
  end

  def add_post_by_title(name)
    post = Post.new(name)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def post_count
    @@post_count
  end

end
