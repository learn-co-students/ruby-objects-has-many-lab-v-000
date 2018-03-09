class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    self.author ? @author.name : nil
  end
end
