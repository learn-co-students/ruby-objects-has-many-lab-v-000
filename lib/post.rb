require 'pry' 

class Post 
  attr_accessor :title, :author 
  
  def initialize(title = "")
    @title = title
  end 
  
  def title 
    @title 
  end 
  
  def author 
    self.author = @author 
  end 
  
  def author_name 
    self.author = @author
    #binding.pry
    if(self.author)
      self.author.name || nil
    end
    
  end 
  
end 