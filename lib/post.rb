class Post
  attr_accessor :author, :title, :author_name

  def initialize(name)
    @title = name
    @author = author
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end

end
