class Post
  attr_accessor :title, :author

  def initialize(title, author = nil)
    @title = title
    @author = author
  end

  def author_name
    if @author != nil
      self.author.name
    else
      @author
    end
  end

end
