class Author

  attr_accessor :name

  @@posts = []

  def initialize(name)
    @name = name
    @posts = []
  #  post.author = name 

  end

  def name
    @name
  end

  def add_post(post)
    @posts << post
    @@posts << post
    post.author = self

  end

  def add_post_by_title(name)
    post = Post.new(name)
    @posts << post
    @@posts << post
    post.author = self
  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count = @@posts.uniq.length
    @@post_count
  end


end
