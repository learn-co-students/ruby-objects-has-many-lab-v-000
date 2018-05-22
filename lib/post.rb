class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    if self.author == nil #returns nil if the post does not have an author
      nil
    else
      self.author.name #knows the name of its author
    end
  end

end