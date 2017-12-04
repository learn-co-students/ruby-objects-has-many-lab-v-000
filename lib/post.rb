require 'pry'

class Post

  attr_accessor :title, :author

  def initialize(title)
    #@post=post
    @title = title
    @author = author
    #@author_name = author_name
  end

  def author_name
    #binding.pry
    self.author == nil ? nil : self.author.name
  end

end
