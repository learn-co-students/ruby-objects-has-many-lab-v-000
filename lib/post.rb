class Post
  @@all = []

  attr_accessor :title, :author, :name

  @post = []

  def initialize(title)
    @title = title
    @name = name
    @@all << self
  end

  def post
    @post
  end

  def author_name
    if author
      self.author.name
    else
      nil
    end
  end

end
