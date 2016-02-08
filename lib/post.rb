require 'pry'

class Post
  attr_accessor :author, :title

  def initialize(title)
    @title = title
  end

  def author_name
    #binding.pry
    if author.nil? 
      nil
    else
      author.name
    end
  end

end
