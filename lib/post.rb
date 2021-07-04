class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    return self.author.name if self.author
  end
end
