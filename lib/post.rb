class Post
  attr_accessor :title, :author
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    self.author == nil ? nil : self.author.name # best way to read this... if the author is empty return nil if not return self.author.name
  end




end
