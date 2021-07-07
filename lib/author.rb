class Author

  attr_accessor :name
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  # takes in an argument of a post and associates that post with the author by
  # telling the post that it belongs to that author
  def add_post(post)
    @posts.push(post)
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(post)
    post = Post.new(post)
    post.author = self
    @posts.push(post)
    @@post_count += 1
  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end
end
