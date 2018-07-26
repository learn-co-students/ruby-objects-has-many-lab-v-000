require 'pry'
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    if self.artist #if song(self) has an artist, write the artist's name
      self.artist.name
    else
      nil
    end
  end

end
