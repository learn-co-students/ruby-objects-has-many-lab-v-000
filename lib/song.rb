## This is the code for the Song class.
## This will be related to the Artist class.
## The tests for the song.rb will not pass
## properly if the Artist class isn't working
class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    if artist
      self.artist.name
    else
      nil
    end
  end

  def self.songs
    @@all
  end

end
