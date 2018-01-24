class Post
  attr_accessor :title,:author

  def initialize(title)
    @title = title
  end

  def author_name # this should return nil if there is not author
    if self.author
      return @author.name
    else
      return nil
    end
  end
end
