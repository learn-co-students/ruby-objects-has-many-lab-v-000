class Post
  def initialize(title)
    @title = title
  end

  attr_accessor :title, :author

  def author_name
    self.author == nil ? nil : self.author.name
  end
end
