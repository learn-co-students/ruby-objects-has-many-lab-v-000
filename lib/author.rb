class Author

  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = Array.new
  end

  def posts
    @posts
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts << new_post
  end

  def self.post_count
    Post.all.size
  end

end
