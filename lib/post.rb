require 'pry'

class Post

attr_accessor :author, :title

@@all = []

def self.all
 @@all
end

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    
    !author.nil? ? author.name : nil

  end

end
