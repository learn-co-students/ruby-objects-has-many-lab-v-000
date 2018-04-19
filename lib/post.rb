class Post

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @author = Author.new(author)
  end

  def author_name
    self.author.name
  end
end
