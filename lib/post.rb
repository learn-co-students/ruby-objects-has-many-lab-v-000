class Post
  attr_accessor :name, :author

  def initialize(name)
    @name = name
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end

  def title
  self.name
  end
end
