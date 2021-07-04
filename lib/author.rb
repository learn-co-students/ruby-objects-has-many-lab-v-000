class Author
  attr_accessor :name
  
  @@posts = []
  
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@posts << post

  end

  def add_post_by_title(title)
    post  = Post.new(title)
    @posts << post
    post.author = self
    @@posts << post

  end

  def self.post_count
    @@posts.length
  end

  def posts
    @posts
  end
end