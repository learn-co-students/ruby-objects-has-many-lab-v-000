class Post 
  
  attr_accessor :post, :author, :title, :all
  
  @@all = []
  
  def initialize(title, author=nil)
    new_post = self
    @title = title
    @author = author
    @@all << new_post
  end
  
  def self.all
    @@all
  end 

  def title
    @title
  end 

  def author_name
    if @author != nil 
      @author.name
    else 
      nil
    end
  end

end 




