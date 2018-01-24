class Post
  def initialize(title)
    @title = title
  end

  attr_accessor :title, :author

  def author_name
    author == nil ? nil : author.name

  end
end
