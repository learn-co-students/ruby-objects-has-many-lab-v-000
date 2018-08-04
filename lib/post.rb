class Post
  @@all = []
  attr_accessor :title, :author

  def self.all
    @@all
  end

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    self.author != nil ? self.author.name : nil
  end




end
