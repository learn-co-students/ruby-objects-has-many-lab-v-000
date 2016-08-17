class Post
  attr_accessor :title, :author

  def initialize(title)
    self.title = title
    @author = nil
  end
  
  def author_name
    @author ? @author.name : @author
  end
end