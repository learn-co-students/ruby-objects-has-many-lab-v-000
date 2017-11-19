class Post
  attr_accessor :author, :title, :genre

  def initialize(title)
    @title = title
  end

  def author_name
    if self.author != nil
      return self.author.name
    end
    nil
  end

end
