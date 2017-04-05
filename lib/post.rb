class Post
  attr_accessor :author, :title

  def initialize(title)
    self.title = title
  end

  def author_name
    if self.author
      result = self.author.name
    else
      result = nil
    end
    return result
  end
end