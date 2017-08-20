# Post
#   #new
#     is initialized with an argument of a title
#   #title
#     has a title
#   #author
#     belongs to an author
#   #author_name
#     knows the name of its author
#     returns nil if the post does not have an author


class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author=(author)
    @author = author
  end

  def author_name
    if !author
      return nil
    else
      self.author.name
    end
  end


end
