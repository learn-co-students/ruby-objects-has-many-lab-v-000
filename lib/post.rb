class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    #returns name or artist, or nil if there is no artist
    self.author != nil ? self.author.name : nil
  end
end
