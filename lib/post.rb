require "pry"
class Post
  attr_accessor :author, :title

  def initialize(name)
    @title = name
    @author = nil
  end

  def author_name
    if @author == nil
      nil
    else
      @author.name
    end
  end

end
