class Post

  attr_accessor :name, :author, :title

  def initialize(title)
    @title = title
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
