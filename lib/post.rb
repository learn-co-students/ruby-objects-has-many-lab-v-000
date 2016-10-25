class Post
  attr_accessor :author, :title, :name

  def initialize(title)
    @title = title
  end

  def author_name
    self.author == nil ? nil : self.author.name
  end
end
