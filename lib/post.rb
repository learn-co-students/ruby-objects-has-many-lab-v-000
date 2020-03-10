class Post
  
  attr_accessor :title, :author, :name
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name
    # self.artist.name if self.artist != nil
    self.author.name if self.author != nil
  end
  
end