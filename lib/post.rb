
class Post
  attr_accessor :title, :author



  def initialize(title)
    @title = title
    @posts = []
  end

  def author_name
      author.name
  end

end
