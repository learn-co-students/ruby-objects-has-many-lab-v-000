class Post
  attr_accessor :title, :author 
  
  @@all = [ ]
  
  def initialize(title = @title)
    @title = title 
    @@all << self
  end
  
  def author_name(author = @author)
    @author = author
    if author == nil 
      return nil 
    else 
      author.name
    end
  end
  
  def self.all 
    @@all
  end
end