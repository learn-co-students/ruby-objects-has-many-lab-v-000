class Post
  attr_accessor :author

  def initialize (title)
    @title = title
    @author = self.author
  end

  def title
    @title
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end
end
