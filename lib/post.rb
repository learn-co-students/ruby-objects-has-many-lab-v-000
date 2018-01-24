#create class
class Post
  #has a title and belongs to an author
  attr_accessor :author, :title

# is initialized with an argument of a title
  def initialize(title)
    @title = title
  end

#knows the name of its author
#returns nil if the post does not have an author

  def author_name
    #if there is an author
    if self.author
      #return the name
      self.author.name
    else
      #return nil
      nil
    end
  end

end
