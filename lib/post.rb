class Post
  attr_accessor :author, :title

  def initialize(title)
    @title = title
    @author = author
  end

  def author_name
    if self.author != nil
    self.author.name
    end
  end
end
