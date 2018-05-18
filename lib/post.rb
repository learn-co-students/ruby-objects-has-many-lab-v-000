class Post
  attr_accessor :author

  def initialize(title)
    @title = title
  end

  def title
    @title
  end

  def author
    @author
  end

  def author_name
    self.author ? self.author.name : nil
  end

end
