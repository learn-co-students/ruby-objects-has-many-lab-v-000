class Post
  attr_accessor :author, :name, :title

  def initialize(title)
    @author = author
    @title = title
  end

  def author_name
   if self.author
     self.author.name
  else
    nil
  end
 end

end
