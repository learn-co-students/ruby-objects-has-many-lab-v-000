class Author
  attr_accessor :name, :posts, :post

  @@post_count = 0
  
  def intialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    title = Post.new(title)
    self.posts << title
    title.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

end
