class Post

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @author = author
  end

  def author_name
    self.author.name if self.author
  end

end
