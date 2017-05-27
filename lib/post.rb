require 'pry'
#Post
  #new
    #is initialized with an argument of a title (FAILED - 9)
  #title
  #  has a title (FAILED - 10)
  #author
    #belongs to an author (FAILED - 11)
  #author_name
    #knows the name of its author (FAILED - 12)
    #returns nil if the post does not have an author (FAILED - 13)
class Post

  attr_accessor :title, :author

  def initialize(title)
    @title = title
  end

  def author_name
    if @author
      @author.name
    else nil
    end
  end



end
