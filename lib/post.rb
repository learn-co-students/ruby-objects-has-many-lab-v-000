class Post
  #you need the author variable here  the files will be associated through a require
  attr_accessor :author, :title
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if self.author == nil
      return nil
    else
    self.author.name
    end 
  end

end
