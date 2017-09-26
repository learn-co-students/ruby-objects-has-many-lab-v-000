class Author

  attr_accessor :name, :posts
  @@post_count = 0
  def initialize(name)
    @name = name
    @posts = []

  end


  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1

  end

  def add_post_by_title(title)
    the_title = Post.new(title)
    add_post(the_title)
  end

  def self.post_count
    @@post_count
  end


end
