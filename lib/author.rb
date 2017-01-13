class Author

  attr_accessor :name
  attr_reader :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  # #add_post takes in an argument of a post and adds that post to the author's collection and tells the post that it belongs to that author
  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  # #add_post_by_title takes in an argument of a post title, creates a new post with it and associates the post and author
  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

end
