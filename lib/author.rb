
class Author

  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def self.post_count
    @@post_count
  end

  def self.post_count=(num)
    @@post_count = num
  end

  def self.inc_post_count
    self.post_count += 1
  end

  def add_post(post)
    self.posts << post
    post.author = self
    self.class.inc_post_count # increment post_count
  end

  def add_post_by_title(title)
    self.posts << Post.new(title)
    self.posts.last.author = self
    self.class.inc_post_count # increment post_count
  end

end
