require "pry"
class Song


  attr_accessor :artist, :name

  def initialize(name)
    @name = name
    #binding.pry
  end


  def artist_name
    if self.artist
      self.artist.name
      #binding.pry
    else
      nil
    end
  end


end
