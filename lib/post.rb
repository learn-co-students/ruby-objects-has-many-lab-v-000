
class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @author = self.author
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    # this is theirs, and more elegant:
    # if self.author
    #   self.author.name
    # else
    #   nil
    # end
    
    if self.author == nil
      nil
    else
      self.author.name
    end
  end
end
