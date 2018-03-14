class Post
  attr_accessor :author, :title

  def initialize(title)
    @title = title
  end

  def author_name
    @author.name
  end
end
