class Post
  @@all = []
  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if self.author == nil
      nil
    else
      self.author.name
    end
  end
end
