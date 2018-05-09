class Post
  attr_accessor :author, :title
  def initialize(title)
    @title = title
  end
  
  def title
    @title
  end
  
  def author_name
    self.author.equal?(nil) ? self.author : self.author.name
  end
end