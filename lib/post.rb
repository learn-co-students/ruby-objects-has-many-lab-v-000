class Post
  attr_accessor :title, :author
  attr_reader :author_name

  def initialize(title)
    @title = title
  end

  def author_name
    self.author == nil ? nil : @author.name
  end
end
