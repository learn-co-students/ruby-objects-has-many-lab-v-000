class Post

  attr_accessor :title,:author

  def initialize(title)
    @title=title
    @author=self.author
  end

  def author_name
    @author == nil ? nil : @author.name
  end

end
