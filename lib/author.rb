

class Author
  attr_accessor :name, :posts
  @@post_count = 0
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post_inst)
    self.posts << post_inst
    post_inst.author = self
    @@post_count += 1
  end

  def add_post_by_title(string)
    add_post(Post.new(string))
  end

  def self.post_count
    @@post_count
  end
end