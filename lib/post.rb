class Post 
  attr_accessor :title, :author 
  @@all = []
  
  def initialize(title) 
    @title = title 
    @@all << self
  end
  
  def author_name
    if author
      self.author.name 
    else 
      nil 
    end
  end 
  
  def all 
    @@all 
  end 

end 