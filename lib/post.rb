class Post
  attr_accessor :title, :author
    @@all = []

  def initialize(name)
    @title = name
    @@all << self
  end

  def author
    @author
  end

  def title
    @title
  end

  def author_name
    @author.name if @author != nil
  end

end
