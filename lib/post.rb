class Post
  attr_accessor :title, :author, :author_name

  def initialize(name)
    @title = name

  end

  def author=(author)
    @author = author
    @author_name = author.name
  end
end
