require 'pry'

class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end

  def artist_name
    #if an artist exists for the song then return the artist name. If it doesn't, return nil
    self.artist ? self.artist.name : nil
    # binding.pry
  end
end
