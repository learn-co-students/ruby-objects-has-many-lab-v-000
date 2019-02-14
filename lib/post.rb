class Post
  attr_accessor :author, :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    self.author != nil ? self.author.name : nil
    # call the NAME attribute on the AUTHOR class's instantiated objected
  end

end #<----- class end
