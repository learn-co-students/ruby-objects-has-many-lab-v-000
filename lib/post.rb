class Post
  attr_accessor :author, :title

  def initialize(title)
    @title = title

  end
  def author_name
    self.author.name if self.author
  end
end
