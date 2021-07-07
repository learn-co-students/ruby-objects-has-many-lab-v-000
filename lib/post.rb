class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @@all << self
    @title = title
  end

  def self.all
    @@all
  end

  def author_name
    if self.author != nil
      self.author.name
    else
      nil
    end
  end
end
