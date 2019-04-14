class Post
  attr_accessor :title, :author

  def initialize(t)
    @title = t
  end

  def author_name
    @author == nil ? nil : @author.name
  end

end
