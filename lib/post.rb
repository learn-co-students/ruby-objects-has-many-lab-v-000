class Post
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(name)
    @title = name
    @@all << self
  end 
  
  def all
    @@all
  end
  
  def author_name
    if self.author
      self.author.name
    else 
      nil
    end 
  end
  
  

  
end 