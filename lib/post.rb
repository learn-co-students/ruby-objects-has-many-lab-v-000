class Post
  attr_accessor :title, :author
  @@all = []

  def initialize(title, author=nil)
    @title = title
    @author = author
    @@all << self
  end

  def author_name
    self.author ? self.author.name : nil
  end

  def self.all
    @@all
  end
end
