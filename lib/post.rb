class Post 
  attr_accessor :title, :author, :name
  
  def initialize(title, author_name = nil)
    @title = title
    @author = author
  end
  
  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end
end