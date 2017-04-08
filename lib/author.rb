class Author

  @@post_count = 0
  attr_reader :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    self.add_post(post) #explicit receiver. In the Artist class there is implicit receiver
  end

  def self.post_count
    @@post_count
  end

end
