class Author
  attr_accessor :name, :posts
  @@post_count = 0

  def initialize(author)
    @posts = []
    @name = author
  end

  def add_post(post)
    @posts << post
    @@post_count +=1
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @@post_count +=1
    @posts << post
    post.author = self
  end

  def self.post_count
    @@post_count
  end
end
