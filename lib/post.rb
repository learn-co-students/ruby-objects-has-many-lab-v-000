class Post
  attr_accessor :title, :author, :name

  def initialize(title)
    @title=title
    @author=author
    @name=name
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
