require 'pry'

class Post

  attr_accessor  :author, :name, :title

  def initialize(title)
    @title = title
  end

  def author_name

    self.author ? self.author.name : self.author
   #binding.pry
  end
  #binding.pry

end
