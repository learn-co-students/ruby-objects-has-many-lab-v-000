class Post
  @@all = []

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @author = nil
    @@all << self
  end

  def author
    @author
  end

  def author_name
    author ? author.name : nil
  end

  def self.all
    @@all
  end
end
