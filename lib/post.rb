class Post
  attr_accessor :title, :author, :name

  def initialize(title)
    @title=title
  end

  def author_name
    return nil if self.author == nil
    else
    self.author.name
  end

end
