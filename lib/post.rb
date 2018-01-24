class Post

  attr_accessor :author
  attr_reader :title

  def initialize(name)
    @title = name
  end

  def author_name
    self.author && self.author.name
  end

end
