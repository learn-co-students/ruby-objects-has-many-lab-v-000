class Post
  attr_accessor :title, :author

  def initialize(title = nil)
    @title = title
  end

  def author_name
    self.author.name if self.author != nil
  end
end
