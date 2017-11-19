require 'pry'

class Post
  attr_accessor :title, :author

  def initialize(title)               #new posts are assigned titles
    @title = title
  end

  def author_name
    if @author != nil                #if author is not not assigned
      self.author.name               #return this posts's author's name
    else
      nil
    end
  end


end
