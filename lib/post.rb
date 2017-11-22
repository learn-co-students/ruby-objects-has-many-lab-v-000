class Post
  attr_accessor :author, :title, :author_name

  def initialize(title)
    @title = title
  end

  def author_name
    if defined? @author
      self.author.name
    else
      nil
    end
  end
end
