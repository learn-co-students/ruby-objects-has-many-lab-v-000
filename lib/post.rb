class Post

  attr_accessor :title, :author, :name

  def initialize(title)
    @title = title
    @author = author
  end

  def author_name
    if self.author == nil
      nil
    else
      self.author.name
    end
  end

end