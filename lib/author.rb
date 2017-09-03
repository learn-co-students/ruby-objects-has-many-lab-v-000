class Author
  attr_accessor :name, :posts

  @@all_authors = []
  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
    @@all_authors << self
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
  end

  def self.post_count
    @@all_authors.each {|author| @@post_count += author.posts.length}
    @@post_count
  end
end
