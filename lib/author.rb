class Author
  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    new_entry = Post.new(title)
    @posts << new_entry
    new_entry.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end   
end