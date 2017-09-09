require 'pry'

class Post

  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name=(author)
    @author_name = author
  end

  def author_name
    # if defined? self.author.name == nil
    #   nil
    # else
      self.author.name if self.author
    # end
    # binding.pry
  end
end
