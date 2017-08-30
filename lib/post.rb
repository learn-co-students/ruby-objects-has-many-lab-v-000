class Post

  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  #Post #new is initialized with an argument of a title
  #Post #title has a title
  #Post #author belongs to an author
  #Post #author_name knows the name of its author
  #Post #author_name returns nil if the post does not have an author

  def author_name
    if self.author == nil
      nil
    else
      self.author.name
    end
  end

end
