class Post
attr_accessor :title, :author, :author_name

  def initialize(title)
    @title = title
  end

  def title
    @title
  end

  def author_name
    @author_name = author.name
  end
end