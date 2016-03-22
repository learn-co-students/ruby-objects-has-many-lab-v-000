class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    self.author.is_a?(Author) ? self.author.name : nil
  end

end
