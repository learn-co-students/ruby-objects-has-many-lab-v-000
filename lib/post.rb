class Post 
  attr_accessor :author, :title, :name
  def initialize(title,author = nil)
    @title = title
    @author = author
  end 
  def author_name
  self.author.name if @author
  
  end 
  
end 