

class Post
attr_accessor :author, :title, :name
   
  def initialize(title)
    @title = title
    @author = author
  end

  def author_name
    if @author.nil?
      nil
    else 
      self.author.name
    end
  end

end
