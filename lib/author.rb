class Author
  attr_accessor :name, :author, :title

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @@post_count += 1
    @posts.push(post)
  end

  def add_post_by_title(name)
    post = Post.new(name)
    add_post(post)    #calls add_post method above
  end

  def self.post_count
    @@post_count
  end

  def posts
    @posts
  end


end
