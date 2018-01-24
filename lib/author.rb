class Author
  attr_accessor :name, :posts
  
  @@posts=[]
  @@post_count=0
  
  def initialize(name)
    @name=name
    @posts=[]
  end

  def add_post(post)
    post.author=self
    @posts << post
    @@posts << post
  end

  def add_post_by_title(name)
    post=Post.new(name)
    post.author=self
    @posts << post
    @@posts << post
  end

  def self.post_count
    @@post_count = @@posts.count
  end

end