class Author
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(title)
    @posts << title
    title.author = self
  end
  def posts
    @posts
  end
  def add_post_by_title(title)
    self.add_post(Post.new(title))
  end
  def self.post_count
    Post.all.count
  end

end
