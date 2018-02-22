 class Author
  
  attr_accessor :posts, :name

  @@post_count=0

  def initialize(name=nil)
    @posts = []
    @name = name
  end

  def author_name
    @name
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count+=1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count+=1
  end

  def self.post_count
    @@post_count
  end

 end

