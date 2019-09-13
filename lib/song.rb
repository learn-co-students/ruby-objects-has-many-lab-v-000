require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize (name)
    @name = name
    @artist = artist
  end

  def artist_name
    #binding.pry
     self.artist.name if self.artist

  end




end
