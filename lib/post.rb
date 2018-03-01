class Post 
  attr_accessor :title, :author
  
  def initialize(title, author = nil)
    @title = title
  end 
  
  def author_name
   self.author ? self.author.name : nil 
  end 
end 