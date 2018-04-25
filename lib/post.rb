class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @author = nil
  end

  def author_name
    self.author == nil ? nil : self.author.name
  end

end
