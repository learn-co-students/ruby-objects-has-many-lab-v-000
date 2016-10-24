class Post
  attr_accessor :title, :author
  def initialize(title)
      @title=title
      @author=nil
  end
  def author_name
    if self.author==nil
      return nil
    else
    self.author.name
  end
  end
end
