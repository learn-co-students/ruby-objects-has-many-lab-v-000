class Post

  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @author = author || nil
  end

  def author_name
    if @author == nil
      return nil
    else
      @author.name
    end
  end

end
