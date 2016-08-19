class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end  
 
  def author_name
    return nil if author == nil
    self.title = author.name
  end  
end