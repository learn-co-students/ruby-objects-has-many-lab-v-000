class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title, author = nil)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    @author == nil ? nil : self.author.name
  end

end
