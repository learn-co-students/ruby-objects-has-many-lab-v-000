## This is the code for the Song class.
## This will be related to the Artist class.
## The tests for the song.rb will not pass
## properly if the Artist class isn't working
@@all = []
class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def artist_name
    self.artist.name
  end

end
