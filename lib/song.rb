require 'pry'
class Song

  attr_accessor :name, :genre, :artist

  def initialize(name)
    @name = name
    @genre = genre
  end

  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
    #binding.pry
  end


end
