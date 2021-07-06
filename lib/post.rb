class Post  
  attr_accessor :title, :author
  @@all = []
  
  def self.all
    @@all 
  end
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def author_name
    if self.author
      self.author.name 
    end
   end
end