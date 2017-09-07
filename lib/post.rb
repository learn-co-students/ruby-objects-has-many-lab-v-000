class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    return_name = nil
    return_name = self.author.name if self.author != nil
    return_name
  end
end
