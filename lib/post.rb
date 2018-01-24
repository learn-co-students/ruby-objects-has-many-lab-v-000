class Post
  attr_accessor :title, :author, :name

  def initialize(title)
    @title = title
    @name = name
    @author = author
  end

  def author_name
   if self.author  #I'd like to know HOW ON EARTH I could've figured this out w/o significant help!
     self.author.name
   else
     nil
   end
  end

end