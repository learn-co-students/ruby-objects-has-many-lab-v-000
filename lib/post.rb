require 'pry'

class Post
  attr_accessor :title, :author
 
 @@all = []
 
  def initialize(title)
    @title = title
    @author = author
    @@all << self
  end

  def author_name
    if self.author
      author.name
    else 
      nil
    end
  end
  
  def self.all
    @@all 
  end

end