class Post
  attr_accessor :title, :author, :author_name

  def initialize(title)
    @title=title
  end

  def author
    self.author = @author
  end

  def author_name
    if self.author
      self.author_name = self.author.name
    else
      nil
    end
  end
end
