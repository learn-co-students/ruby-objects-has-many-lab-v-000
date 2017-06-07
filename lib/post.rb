class Post
  attr_accessor :author, :title
  @@all = []
  def initialize(title, author=nil)
    @title = title
    @@all << self
    @author = author
  end

  def self.all
    @@all
  end

# This is wrong although it was triggering some tests
#  def author(author1)
#    self.author = author 1
#  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end
end
