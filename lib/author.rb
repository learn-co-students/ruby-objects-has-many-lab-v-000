class Author

  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []  # initialized with empty collection of posts
  end

  def add_post(post)
    self.posts << post # adds post to the author's collection
    post.author = self # tells teh post that it belongs to that author
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title) # creates a new post with the title
    post.author = self # associates the post and the author
    self.posts << post
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end
