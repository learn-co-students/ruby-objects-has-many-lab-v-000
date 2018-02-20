class Post
  attr_accessor :author, :title, :genre
 
  def initialize(title)
    @title = title
    @genre = genre
  end
  
  def author_name
    if self.author == nil
      return nil
    else
      self.author.name
    end
  end
end