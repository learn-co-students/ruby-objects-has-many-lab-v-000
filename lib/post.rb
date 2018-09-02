class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if self.author != nil && self.author.name != nil
      return self.author.name
    else
      return nil
    end
  end
end
