class Post
  attr_accessor :name, :posts, :author, :title, :author_name

  def initialize(title)
    @title = title
    @name = name
  end

  def author_name
    if @author != nil
      author.name
    end
  end

end
