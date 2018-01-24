class Post
  attr_reader :title
  attr_accessor :author

  def initialize(title)
    @title = title
  end

  def author_name
    self.author.name unless self.author == nil
  end
end

