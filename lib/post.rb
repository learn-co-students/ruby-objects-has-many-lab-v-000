class Post
  # instance
  attr_accessor :title, :author
  # initialization
  def initialize(title)
    @title = title
  end
  # instance methods
  def author_name
    @author == nil ? nil : @author.name
  end
end