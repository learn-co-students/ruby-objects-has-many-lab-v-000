class Post 
  
  attr_accessor :author, :title, :name   
  
  def initialize(title)
    @title = title 
  end 
  
  def author_name 
    if author 
      self.author.name 
    else 
      nil 
    end 
  end 
  
end 