class Post 
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all = []
  end 
  
  def self.all 
    @@all
  end
  

end 