class Author

  attr_accessor :name

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end # initialize

  def posts
    @posts
  end # posts

  def add_post(title)
    title.author = self
    @posts << title
    @@post_count += 1
  end # add_post

  def add_post_by_title(title)
    @title = Post.new(title)
    @title.author = self
    @posts << @title
    @@post_count += 1
  end # add_post_by_name

  def self.post_count
    @@post_count
  end # post_count

end # class Author
