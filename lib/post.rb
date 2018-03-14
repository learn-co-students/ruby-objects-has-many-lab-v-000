class Post
  attr_accessor :title, :author, :name

  def initialize(title)
    @title = title
  end

  def author_name
    if author
      author.name
    end
  end
end
