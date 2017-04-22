class Post

  attr_accessor :name, :author, :title

  def initialize(title)
    @title = title
  end

  def author_name
    if author == nil
      nil
    else
      self.author.name
    end
  end

end
