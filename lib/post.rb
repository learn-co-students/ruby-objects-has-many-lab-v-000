class Post
  attr_accessor :title, :author

  def initialize(name)
    @title = name
    @author = author
  end

  def author_name
    if self.author != nil
      self.author.name
    end
  end
end
