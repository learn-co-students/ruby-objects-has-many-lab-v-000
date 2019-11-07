class Post

  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    result = nil
    if self.author != nil
      result = self.author.name
    end
    result
  end

end
