require "pry"
class Song 

  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    if self.artist.name
      self.artist.name
    else
      nil
    end
    #binding.pry
  end
end