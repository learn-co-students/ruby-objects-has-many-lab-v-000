class Post
  attr_accessor :title, :author

  @@all =[]

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
     self.author ? self.author.name : nil
  end

end
