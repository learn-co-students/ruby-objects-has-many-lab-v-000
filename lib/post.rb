class Post

  attr_accessor :author
  attr_reader :title

  def initialize(title)
    @author = author
    @title = title
  end

  def author_name
      self.author.name
  end
end
