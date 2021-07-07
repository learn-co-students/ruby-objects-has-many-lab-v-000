class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @author = author
  end

  def author_name
    if !self.author
      return nil
    end
    self.author.name
  end
end
