require "pry"

class Post

  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    if !!(defined? self.author.name)
      self.author.name
    else
      nil
    end
  end

end
