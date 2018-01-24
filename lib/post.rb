class Post

  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    if @author != nil
      author.name
    else
      nil
    end

  end
  
  # def author_name
  #   @author != nil ? self.author.name : nil
  # end
  

end
