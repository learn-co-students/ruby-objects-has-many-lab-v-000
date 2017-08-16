require "pry"

class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title

  end

  def author_name
    author = self.author
    if author == nil
      nil
    else
      author.name
    end
  end

end
