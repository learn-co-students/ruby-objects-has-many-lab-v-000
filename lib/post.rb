class Post
  attr_accessor :name, :title, :genre, :author, :posts
  def initialize(title)
      @title = title
  end
  def author_name
    if author == nil
      return nil
    else
      return self.author.name
    end
  end
end
