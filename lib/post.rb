class Post

  attr_accessor :title, :author
  @@all=[]
  def initialize(title)
    @title=title
    @@all<<self
  end

  def author_name
    if @author.nil?
      nil
    else
      @author.name
    end
  end

  def author=(author)
    @author=author
  end

end
