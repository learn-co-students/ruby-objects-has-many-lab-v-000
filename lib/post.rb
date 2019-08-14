require 'pry'

class Post

  attr_accessor :author, :title

  def initialize(title)
    @title = title
  end

  def author_name
    #If an author of the post exists, return the author's name, ir not, return nil
    self.author ? self.author.name : nil
  end

end
