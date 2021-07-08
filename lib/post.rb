class Post
  attr_accessor :title, :author, :author_name

  def initialize(title)
    @title = title
    @author_name = nil
    @author = nil
  end

  def author=(author)
    @author = author
    @author_name = author.name
  end

end
