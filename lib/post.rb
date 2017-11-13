class Post

  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    if(@author.is_a? Author)
      return @author.name
    end
  end

end
