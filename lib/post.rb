class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @author = author
  end

# Returns the name of the author for the post on which the method is called; returns nil if no author is named.
  def author_name
    self.author ? self.author.name : nil
  end
end
