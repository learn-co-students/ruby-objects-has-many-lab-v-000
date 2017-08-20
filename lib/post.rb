class Post

  attr_accessor :name, :author, :title

  def initialize(title)
    @name = name
    @title = title
  end

  def author_name
    self.author.name if self.author
  end

end
