class Author
  attr_accessor :name, :posts

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
      new_title = Post.new(title)
      add_post(new_title)
  end

  @@post_count = 0

  def self.post_count
    @@post_count
  end

end
