class Author
  attr_accessor :name
  attr_reader :posts
  @@post_count = 0
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    @@post_count +=1
    post.author = self
  end

  def add_post_by_title(post_name)
    post = Post.new(post_name)
    @@post_count +=1
    @posts << post
    post.author = self
  end

  def self.post_count
    @@post_count
  end

end
