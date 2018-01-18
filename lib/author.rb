class Author
attr_accessor :name, :posts
@@all_posts = []
@@post_count

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@all_posts << post
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.add_post(post)
  end

  def self.post_count
    @@post_count = @@all_posts.count
  end


end
