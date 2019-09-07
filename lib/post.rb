class Post

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @author = author
  end

  def author_name
    return nil if @author == nil
    @author.name
  end

end
