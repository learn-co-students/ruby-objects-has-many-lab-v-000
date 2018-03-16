class Author
  attr_accessor :name
  @@post_count = 0
  def initialize(name)
    @name = name
    @posts = []
  end #def initialize

  def posts
    @posts
  end #def posts

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end #def add_post

  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end #def add_post_by_title

  def self.post_count
    @@post_count
  end #def self.post_count

end #class Author
