class Author
  attr_accessor :name, :posts
#  @@authors = []
  @@post_count = 0

  def initialize(name)
    self.name = name
    self.posts = []
#    @@authors << self
  end

  def add_post(post)
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post
    post.author = self
    @@post_count += 1
    post
  end

  def self.post_count
#    @@authors.each do |post_instance|
#      @@post_count += post_instance.posts.count
#    end
    @@post_count
  end
end
