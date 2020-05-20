class Post
  attr_accessor :title, :author

  @@all = []

  def initialize (title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if author == nil
      nil
    else
      self.author.name
    end
  end

  def add_post(post)
    post.author = self
  end

end
