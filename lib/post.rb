class Post 
  attr_accessor :author, :title  

  def initialize(title)
    @author = author 
    @title = title 
  end 
  
  def author_name
    if author 
      self.author.name
    end 
  end 


end 