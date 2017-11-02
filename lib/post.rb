class Post
  attr_accessor :title
  attr_accessor :author

  def initialize(title)
    @title = title
  end

  def author
    @author
  end

  def author_name
    @author ? @author.name : nil
  end
end
