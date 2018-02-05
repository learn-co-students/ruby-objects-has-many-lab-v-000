class Post
  attr_accessor :title, :author
  def initialize(title)
    @title = title
    @posts = []
  end

  def author_name
    if author == nil
      nil
    else
      author.name
    end
  end

end
