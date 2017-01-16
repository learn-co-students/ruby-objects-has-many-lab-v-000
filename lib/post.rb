class Post
  attr_accessor :name, :author, :title 

  def initialize(title = nil, author = nil)
    @author = author 
    @title = title 
  end# of initialize

  def author_name
    @author == nil ? nil : @author.name  
  end# of author_name 

end# of class