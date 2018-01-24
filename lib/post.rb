class Post

  attr_accessor :author

  def initialize(title)
    @title = title    
  end

  def title
    @title    
  end

  def author_name
    if !@author
      nil
    else
      @author.name
    end
  end

end