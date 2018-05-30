class Post
  def initialize(title)
    @title = title
    @@all << self
  end

  @@all = []
  
  def self.all
    @@all
  end
  
  attr_accessor :title, :author

  def author_name
    if !author
      nil
    else
      self.author.name
    end
  end
end