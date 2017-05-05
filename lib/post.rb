class Post
  attr_accessor :author, :title

  #tried to use default author = nil, but that didn't work
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