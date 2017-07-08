class Post

  attr_accessor :name, :author

  def initialize(title)
    @titles = title
  end

  def title
    @titles
  end

  def author_name
    if self.author
      self.author.name
    else
      nil
    end
  end
end
