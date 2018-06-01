class Post
  attr_accessor :title, :author

  @@all = []

  def initialize (title)
    @title = title
    @author = author
    @@all << self
  end

  def author_name
    if self.author
      self.author.name
    end
  end



end
