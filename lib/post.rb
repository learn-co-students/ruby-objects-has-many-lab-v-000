class Post
  attr_accessor :title, :author

  def initialize(name)
    @title =  name
  end

  def author_name
    return nil if !self.author
    self.author.name
  end

end

