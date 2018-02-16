require 'pry'
class Post
  attr_accessor :title, :author

  def initialize(title)
    @title = title
    @author = nil

  end

  def author_name
    if @author != nil
      self.author.name
    else
      nil
    end 

  end

end
