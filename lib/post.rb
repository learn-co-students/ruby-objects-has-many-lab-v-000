class Post
  
  @@all = []
  attr_accessor :title, :author
  
  
  def initialize(title, author = nil)
    @title = title
    @author = author
    @@all << self
  end 

  def author_name
    if self.author
      self.author.name
    else 
      nil
    end
      
  end
end
  