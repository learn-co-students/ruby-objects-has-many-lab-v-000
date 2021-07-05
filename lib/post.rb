class Post
  attr_accessor :title, :author, :name

  def initialize(title)
    @title = title
    @name = name
  end

  def author
    @author
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end
end
